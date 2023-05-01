using CS.MemoryCache.WebApi.Entities;

namespace CS.MemoryCache.WebApi.Services.Interfaces
{
    public interface IEmployeeService
    {
        Task<IEnumerable<Employee>> GetEmployees();
    }
}
