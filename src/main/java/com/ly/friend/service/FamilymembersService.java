package  com.ly.friend.service;

import com.ly.friend.vo.Familymembers;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.service.IdEntityService;
import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;
import org.nutz.dao.Cnd;
import com.ly.comm.Page;

import java.util.List;


@IocBean(fields = { "dao" })
public class FamilymembersService extends IdEntityService<Familymembers> {

	public static String CACHE_NAME = "familymembers";
    public static String CACHE_COUNT_KEY = "familymembers_count";

    public List<Familymembers> queryCache(Cnd c,Page p)
    {
        List<Familymembers> list_familymembers = null;
        String cacheKey = "familymembers_list_" + p.getPageCurrent();

        Cache cache = CacheManager.getInstance().getCache(CACHE_NAME);
        if(cache.get(cacheKey) == null)
        {
            list_familymembers = this.query(c, p);
            cache.put(new Element(cacheKey, list_familymembers));
        }else{
            list_familymembers = (List<Familymembers>)cache.get(cacheKey).getObjectValue();
        }
        return list_familymembers;
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


