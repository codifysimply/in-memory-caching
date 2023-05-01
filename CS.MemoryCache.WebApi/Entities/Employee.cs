namespace CS.MemoryCache.WebApi.Entities
{
    public class Employee
    {
        public int EmployeeId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Job { get; set; }
        public int Salary { get; set; }
        public DateTime HireDate { get; set; }
        public int? Manager { get; set; }
    }
}
