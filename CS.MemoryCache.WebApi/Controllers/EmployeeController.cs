using CS.MemoryCache.WebApi.Entities;
using CS.MemoryCache.WebApi.Services.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Caching.Memory;

namespace CS.MemoryCache.WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        private readonly IEmployeeService employeeService;
        private readonly IMemoryCache memoryCache;
        public EmployeeController(IMemoryCache memoryCache, IEmployeeService employeeService)
        {
            this.memoryCache = memoryCache;
            this.employeeService = employeeService;
        }

        [HttpGet("employees")]
        public async Task<IEnumerable<Employee>> GelAllEmployees()
        {
            IEnumerable<Employee> cacheEmployees;

            if (!memoryCache.TryGetValue("cacheEmployees", out cacheEmployees))
            {
                cacheEmployees = await employeeService.GetEmployees();

                var cacheEntryOptions = new MemoryCacheEntryOptions()
                    .SetSlidingExpiration(TimeSpan.FromSeconds(100))
                    .SetAbsoluteExpiration(TimeSpan.FromSeconds(200))
                    .SetPriority(CacheItemPriority.NeverRemove)
                    .SetSize(1024);

                memoryCache.Set("cacheEmployees", cacheEmployees, cacheEntryOptions);
            }

            memoryCache.TryGetValue("cacheEmployees", out cacheEmployees);
            return cacheEmployees;
        }
    }
}
