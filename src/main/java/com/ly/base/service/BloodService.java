package  com.ly.base.service;

import com.ly.base.vo.Blood;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.service.IdEntityService;
import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;
import org.nutz.dao.Cnd;
import com.ly.comm.Page;

import java.util.List;


@IocBean(fields = { "dao" })
public class BloodService extends IdEntityService<Blood> {

	public static String CACHE_NAME = "blood";
    public static String CACHE_COUNT_KEY = "blood_count";

    public List<Blood> queryCache(Cnd c,Page p)
    {
        List<Blood> list_blood = null;
        String cacheKey = "blood_list_" + p.getPageCurrent();

        Cache cache = CacheManager.getInstance().getCache(CACHE_NAME);
        if(cache.get(cacheKey) == null)
        {
            list_blood = this.query(c, p);
            cache.put(new Element(cacheKey, list_blood));
        }else{
            list_blood = (List<Blood>)cache.get(cacheKey).getObjectValue();
        }
        return list_blood;
    }

    public int listCount(Cnd c)
    {
        Long num = 0L;
        Cache cache = CacheManager.getInstance().getCache(CACHE_NAME);
        if(cache.get(CACHE_COUNT_KEY) == null)
        {
            num = Long.valueOf(this.count(c));
            cache.put(new Element(CACHE_COUNT_KEY, num));
        }else{
            num = (Long)cache.get(CACHE_COUNT_KEY).getObjectValue();
        }
        return num.intValue();
    }



}


