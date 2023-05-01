using CS.MemoryCache.WebApi.Entities;
using CS.MemoryCache.WebApi.Services.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace CS.MemoryCache.WebApi.Services
{
    public class EmployeeService : IEmployeeService
    {
        private readonly EmployeeDbContext employeeDbContext;

        public EmployeeService(EmployeeDbContext employeeDbContext)
        {
            this.employeeDbContext = employeeDbContext;
        }

        public async Task<IEnumerable<Employee>> GetEmployees()
        {
            return await employeeDbContext.Employees.ToListAsync();
        }
    }
}
