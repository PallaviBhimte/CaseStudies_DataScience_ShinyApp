install.packages("shiny")
library(shiny)

server = function(input, output, session) {}


ui = fluidPage(theme = shinytheme("united"),
  
  #Shiny App title
  titlePanel("Risk Calculator App"),
  
  #Sidebar layout
  sidebarLayout(
    
    #Sidebar panel for Demogrpahics, Health Status and Occupation Inputs
    sidebarPanel(
      
      #Demogrpahic Inputs
      "Demographics",
      selectInput("age", "Age", c("-Select Age-","0-4", "5-17", "18-29", "30-39", "40-49", "50-64", "65-74", "75-84", "85+")),
      selectInput("ethnicity", "Ethinicity", c("-Select Ethnicity-","Non-Hispanic American Indian or Alaska Native", "Non-Hispanic Asian or Pacific Islande", "Non-Hispanic White", "Non-Hispanic Black", "Hispanic or Latino")),
      selectInput("gender", "Gender", c("-Select Gender-","Male", "Female")),
      
      #Disease and Occupation Inputs
      "Disease",
      selectInput("health", "Health Status", c("-Select Disease-", "Asthama", "Obesity", "Diabetes", "Chronic Kidney Disease", "Severe Obesity", 
                                               "Coronary Artery Disease", "History of Stroke", "COPD", "Smoker", "Cancer/Immune Compromised")),
      
      "Occupation",
      selectInput("major_occ", "Major Occupation", c("-Select-", "Clerical and Admin Workers", "Community and Personal Service Workers", "Labourers", 
                                                     "Machiner Operators and Drivers", "Managers", "Professionals", "Sales Workers", "Technicians and Trade Workers")),
      
      selectInput("occupation", "Occupation", c("-Select-", "Courier", "Medical Receptionist", "Health Practise Manager", 
                                                "Secretary", "Project/Program Admin", "Filing/ Registry Clerk", 
                                                "Payroll Clerk", "Personal Assistant", "Contact Admin", "Credit Loan Officer", 
                                                "Accounts Clerk", "Despatching/Receiving Clerk", "Officer Manager", 
                                                "Information Officer", "General Clerk", "Bank Worker", "Purchasing Officer", 
                                                "Data Entry Operator", "Postal Delivery Officer", "Call/Contact Center Operator", 
                                                "Order Clerk", "Stock Clerk", "Insurance Consultor", "Hospital Orderly", 
                                                "Dental Assistant", "Ambulance Officer", "Enrolled Nurse", "Fire Fighter", 
                                                "Prison Officer", "Police Officer", "Personal Care Assistant", "Aged/Disabled Carer", 
                                                "Community Worker", "Integration Aide", "Child Care Worker", "Massage Therapist", 
                                                "Teachers' Aide", "Beauty Therapist", "Fitness Instructor", "Waiter", "Security Officer", 
                                                "Swimmming Coach Instructor", "Barista", "Cafe worker", "Bar Attendent", "Travel Consultant",
                                                "Commercial Housekeeper", "Commercial Keeper", "Home Improvement Installer", "Car Detailer", 
                                                "Fast Food Cook", "Builder's Labourer", "Shelf Filler", "Garden Labourer", "Kitchen Hand", 
                                                "Concreter", "Labourers nec", "Packers nfd", "Product Assembler", "handy Person", 
                                                "Forklift Driver", "Truck Driver(General)", "Engineering Production Worker", "Bus Driver", 
                                                "Taxi Driver", "Delivery Driver", "Storeperson", "Miner", "Health and Welfare Services Managers", 
                                                "Facilities Manager", "Chief Executin/ Managing Director", "Quality Assurance Manager", 
                                                "Transport Company Manager", "Finance Manager", "Human Resource Manager", "Engineering Manager", 
                                                "Sales and Marketing Manager", "Construction Project Manager", "Hotel/Motel Manager", 
                                                "ICT Managers nfd", "Supply and Distribution Manager", "Beef Cattle Farmer", "Production Manager", 
                                                "Customer Service Manager", "Wholesaler", "Corporate General Manager", "School Principal", 
                                                "Retail Manager", "Childcare Centre Manager", "Conference and Event Organiser", 
                                                "Cafe or Restaurant Manager", "Clinical Psychologist", "Retail Pharmacist", 
                                                "Early Childhood Teacher", "Registered Nurse(Mental Health)", "Social Worker", 
                                                "Welfare Worker","Special Needs Teacher", "Registered Nurse(Surgical)", 
                                                "Dentist", "Physiotherapist", "Primary School Teacher", "Minister of Religion","
                                                Occupational Health and Safety Advisor", "Secondary School Teacher", 
                                                "Vocational Education Teacher", "Private Tutors and Teaahers","Mechanial Engineer", 
                                                "Urban and Regional Planner", "Systems Admin", "Architect Nurse Manager", 
                                                "Medical Laboratory Scientist", "Solicitor", "Policy Analyst", "Graphic Designer", 
                                                "Financial Investment Advisor", "Accountat(General)", "Human Resource Advisor", 
                                                "Management Consultant", "Finance Broker", "Training and Development Professional", 
                                                "Civil Engineer", "Public Relations Professional", "Civil Engineer", "Public Relations Professional", 
                                                "Sales Representative", "Marketing Specialist","University Lecturer","ICT Business Analyst", 
                                                "Pharmacy Sales Assistant","ICT Sales Assistant", "Sales Representative(Personal and Household Goods)",
                                                "Real Estate Agent", "Retail Supervisor", "Motor Vehicle Part Interpreter", "Sales Assistant(General)",
                                                "Real Estate Representative", "Ticket Seller", "PLumber", "Hairdresser", "Architectural Draftperson", 
                                                "Welder", "Motor Mechanic", "Baker", "Cabinet Maker", "Electronic Equipment Trades Worker", "Fitter", 
                                                "Fiborous Plasterer", "Telecommunications Technician", "Air Conditioning and Regfrigerating Mechanic", 
                                                "Wall and Floor Tiler", "ICT Customer Support Officer", "Painting Trades Workers", "Building Associate", 
                                                "Electrician", "Buthcer or Small Goods Maker", "Chef", "Carpenter", "Cook", "Bricklayer")),
      
      actionButton("submit", "Submit", class="btn-primary"),
      shinyjs::hidden(
        span(id = "submit_msg", "Submitting your responses. Please wait...")
      )
    ),
    #Main panel for displaying output
    mainPanel(
      h3(textOutput("Demographic Score")),
      h3(textOutput("Disease Score")),
      h3(textOutput("OccupationScore"))
    )
  )
)
# Run the app ----
shinyApp(ui = ui, server = server)
