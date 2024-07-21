namespace Course_Management_System
{
    internal class Course
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Duration { get; set; }
        public decimal Price { get; set; }
        public DateTime CreationTime {  get; set; }
        public DateTime ModificationTime { get; set;}
    }
}
 