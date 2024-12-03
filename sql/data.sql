INSERT INTO applicants (
    first_name,
    last_name,
    email,
    phone_number,
    birthdate,
    gender,
    location,
    years_of_experience,
    education_level,
    field_of_study,
    job_title,
    tech_stack,
    portfolio_url,
    bio
) VALUES
('Alice', 'Smith', 'alice.smith@example.com', '123-456-7890', '1990-01-01', 'Female', 'New York, USA', 5, 'Bachelor', 'Computer Science', 'Software Engineer', 'JavaScript, React, Node.js', 'https://portfolio.com/alicesmith', 'Passionate software engineer with a focus on frontend development.'),
('Bob', 'Johnson', 'bob.johnson@example.com', '987-654-3210', '1988-03-12', 'Male', 'San Francisco, USA', 8, 'Master', 'Electrical Engineering', 'Embedded Systems Engineer', 'C, C++, Embedded Systems', 'https://portfolio.com/bobjohnson', 'Experienced embedded systems engineer with a background in IoT.'),
('Charlie', 'Brown', 'charlie.brown@example.com', NULL, '1992-07-21', 'Male', 'London, UK', 3, 'Bachelor', 'Information Technology', 'IT Support Specialist', 'Windows, Networking, Troubleshooting', 'https://portfolio.com/charliebrown', 'IT support specialist skilled in network troubleshooting.'),
('Dana', 'Wilson', 'dana.wilson@example.com', '555-123-4567', '1995-10-30', 'Female', 'Toronto, Canada', 2, 'High School', 'General Studies', 'Junior Developer', 'HTML, CSS, JavaScript', 'https://portfolio.com/danawilson', 'Aspiring web developer with a passion for design.'),
('Eli', 'Miller', 'eli.miller@example.com', '444-555-6666', '1985-12-15', 'Other', 'Berlin, Germany', 10, 'PhD', 'Data Science', 'Data Scientist', 'Python, R, Machine Learning', 'https://portfolio.com/elimiller', 'Data scientist with expertise in machine learning algorithms.'),
('Faith', 'Taylor', 'faith.taylor@example.com', '333-444-5555', '1990-05-18', 'Female', 'Paris, France', 6, 'Bachelor', 'Business Administration', 'Product Manager', 'Agile, Product Roadmaps, UX/UI', 'https://portfolio.com/fataylor', 'Experienced product manager with a focus on user-centered design.'),
('George', 'Martin', 'george.martin@example.com', '222-333-4444', '1994-08-22', 'Male', 'Madrid, Spain', 4, 'Master', 'Mechanical Engineering', 'Mechanical Engineer', 'CAD, SolidWorks, Thermodynamics', 'https://portfolio.com/gmartin', 'Mechanical engineer specializing in thermodynamics.'),
('Helen', 'Garcia', 'helen.garcia@example.com', '555-666-7777', '1991-11-11', 'Female', 'Sydney, Australia', 7, 'Bachelor', 'Graphic Design', 'UI/UX Designer', 'Adobe Photoshop, Sketch, Figma', 'https://portfolio.com/hgarcia', 'UI/UX designer focused on creating intuitive interfaces.'),
('Ian', 'Martinez', 'ian.martinez@example.com', NULL, '1987-09-19', 'Male', 'Dubai, UAE', 12, 'PhD', 'Artificial Intelligence', 'AI Researcher', 'Python, TensorFlow, NLP', 'https://portfolio.com/imartinez', 'AI researcher with a focus on natural language processing.'),
('Jade', 'Williams', 'jade.williams@example.com', '777-888-9999', '1993-06-25', 'Female', 'Singapore', 3, 'Master', 'Cybersecurity', 'Cybersecurity Analyst', 'Network Security, Ethical Hacking, Firewalls', 'https://portfolio.com/jwilliams', 'Cybersecurity analyst passionate about protecting data security.'),
('Kyle', 'Thomas', 'kyle.thomas@example.com', '888-777-6666', '1992-04-14', 'Male', 'Amsterdam, Netherlands', 6, 'Bachelor', 'Software Engineering', 'Backend Developer', 'Java, Spring Boot, SQL', 'https://portfolio.com/kthomas', 'Backend developer with experience in Java and cloud technologies.'),
('Lara', 'Nguyen', 'lara.nguyen@example.com', '111-222-3333', '1996-03-22', 'Female', 'Hanoi, Vietnam', 2, 'High School', 'Graphic Arts', 'Graphic Designer', 'Illustrator, Photoshop, InDesign', 'https://portfolio.com/lnguyen', 'Creative graphic designer with a focus on branding.'),
('Mike', 'Davis', 'mike.davis@example.com', NULL, '1989-02-27', 'Male', 'Cape Town, South Africa', 9, 'Master', 'Software Engineering', 'Full Stack Developer', 'Python, Django, Vue.js', 'https://portfolio.com/mdavis', 'Full stack developer experienced in Python and Vue.js.'),
('Nina', 'Lopez', 'nina.lopez@example.com', '444-555-6666', '1991-09-08', 'Female', 'Mexico City, Mexico', 4, 'Bachelor', 'Marketing', 'Digital Marketing Specialist', 'SEO, SEM, Content Marketing', 'https://portfolio.com/nlopez', 'Digital marketer focused on SEO and brand building.'),
('Oscar', 'Hernandez', 'oscar.hernandez@example.com', '333-222-1111', '1986-07-19', 'Male', 'Lima, Peru', 11, 'Master', 'Computer Science', 'Data Engineer', 'SQL, Python, ETL', 'https://portfolio.com/ohdez', 'Data engineer with expertise in ETL and data processing.'),
('Paula', 'Clark', 'paula.clark@example.com', '999-888-7777', '1995-05-05', 'Female', 'Auckland, New Zealand', 3, 'Bachelor', 'Public Relations', 'Content Strategist', 'Content Marketing, Social Media, SEO', 'https://portfolio.com/pclark', 'Content strategist with a background in social media management.'),
('Quinn', 'Walker', 'quinn.walker@example.com', '123-456-7891', '1994-10-14', 'Other', 'Tokyo, Japan', 5, 'Bachelor', 'Robotics', 'Robotics Engineer', 'C++, ROS, SLAM', 'https://portfolio.com/qwalker', 'Robotics engineer with expertise in autonomous systems.'),
('Ruby', 'Turner', 'ruby.turner@example.com', '456-789-1234', '1992-11-23', 'Female', 'Los Angeles, USA', 6, 'Master', 'Graphic Design', 'Creative Director', 'Adobe Creative Suite, Brand Strategy', 'https://portfolio.com/rturner', 'Creative director with a passion for visual storytelling.'),
('Sam', 'Young', 'sam.young@example.com', '789-123-4567', '1990-12-12', 'Male', 'Vancouver, Canada', 7, 'Bachelor', 'Web Development', 'Frontend Developer', 'HTML, CSS, JavaScript, React', 'https://portfolio.com/syoung', 'Frontend developer with a focus on responsive design.'),
('Tina', 'Baker', 'tina.baker@example.com', NULL, '1993-09-17', 'Female', 'Chicago, USA', 4, 'High School', 'Photography', 'Photo Editor', 'Photoshop, Lightroom', 'https://portfolio.com/tbaker', 'Creative photo editor specializing in visual storytelling.'),
('Uma', 'Harris', 'uma.harris@example.com', '654-321-0987', '1989-04-30', 'Female', 'Mumbai, India', 10, 'Master', 'Computer Science', 'AI Engineer', 'Python, Machine Learning, Deep Learning', 'https://portfolio.com/uharris', 'AI engineer with a focus on deep learning models.'),
('Victor', 'Hill', 'victor.hill@example.com', '321-654-9876', '1988-05-02', 'Male', 'Buenos Aires, Argentina', 8, 'Bachelor', 'Software Engineering', 'DevOps Engineer', 'Kubernetes, Docker, CI/CD', 'https://portfolio.com/vhill', 'DevOps engineer with experience in container orchestration.'),
('Wendy', 'Scott', 'wendy.scott@example.com', '654-987-3210', '1994-08-09', 'Female', 'Seoul, South Korea', 5, 'Bachelor', 'Fashion Design', 'Fashion Designer', 'Adobe Illustrator, Pattern Making', 'https://portfolio.com/wscott', 'Fashion designer with a love for innovative designs.'),
('Xander', 'Kim', 'xander.kim@example.com', NULL, '1991-07-28', 'Male', 'Hong Kong, China', 9, 'PhD', 'Finance', 'Quantitative Analyst', 'Python, R, Financial Modeling', 'https://portfolio.com/xkim', 'Quantitative analyst with expertise in risk management.'),
('Yara', 'Moore', 'yara.moore@example.com', '789-654-3210', '1990-06-15', 'Female', 'Istanbul, Turkey', 6, 'Bachelor', 'Civil Engineering', 'Project Manager', 'Project Management, AutoCAD, Revit', 'https://portfolio.com/ymoore', 'Project manager with a focus on construction management.'),
('Zach', 'Lewis', 'zach.lewis@example.com', '321-789-4560', '1987-02-02', 'Male', 'São Paulo, Brazil', 12, 'Master', 'Environmental Science', 'Environmental Scientist', 'GIS, Environmental Impact Assessments', 'https://portfolio.com/zlewis', 'Environmental scientist specializing in impact assessments.'),
('Amy', 'Reed', 'amy.reed@example.com', '456-321-7890', '1995-09-22', 'Female', 'Denver, USA', 3, 'High School', 'Economics', 'Research Assistant', 'Data Analysis, Report Writing', 'https://portfolio.com/areed', 'Research assistant focused on data analysis and reporting.'),
('Ben', 'Carter', 'ben.carter@example.com', '123-987-6543', '1992-04-04', 'Male', 'Oslo, Norway', 5, 'Bachelor', 'Statistics', 'Data Analyst', 'Excel, SQL, Tableau', 'https://portfolio.com/bcarter', 'Data analyst with experience in reporting and visualizations.'),
('Chloe', 'Adams', 'chloe.adams@example.com', '789-456-1230', '1993-11-10', 'Female', 'Moscow, Russia', 4, 'Master', 'Architecture', 'Architect', 'AutoCAD, Revit, BIM', 'https://portfolio.com/cadams', 'Architect focused on sustainable design solutions.'),
('David', 'Ward', 'david.ward@example.com', '654-123-7894', '1986-07-31', 'Male', 'Rome, Italy', 11, 'Bachelor', 'Finance', 'Financial Analyst', 'Excel, Financial Modeling, Python', 'https://portfolio.com/dward', 'Financial analyst with expertise in investment analysis.'),
('Emma', 'Nelson', 'emma.nelson@example.com', '321-456-7894', '1991-01-17', 'Female', 'Athens, Greece', 6, 'Bachelor', 'Digital Media', 'Content Creator', 'Content Strategy, Blogging, SEO', 'https://portfolio.com/enelson', 'Content creator with a background in digital media.'),
('Frank', 'Gonzalez', 'frank.gonzalez@example.com', '654-987-3211', '1985-03-23', 'Male', 'Bangkok, Thailand', 10, 'PhD', 'Biotechnology', 'Research Scientist', 'Biotechnology, Data Analysis, Lab Management', 'https://portfolio.com/fgonzalez', 'Research scientist with a focus on biotechnology innovations.'),
('Grace', 'Simmons', 'grace.simmons@example.com', NULL, '1994-08-16', 'Female', 'Kuala Lumpur, Malaysia', 5, 'Master', 'Public Health', 'Epidemiologist', 'Data Analysis, Research, Public Health', 'https://portfolio.com/gsimmons', 'Epidemiologist focused on global health issues.'),
('Hank', 'Lee', 'hank.lee@example.com', '987-654-3219', '1989-12-29', 'Male', 'Seoul, South Korea', 9, 'Bachelor', 'Mechanical Engineering', 'Mechanical Engineer', 'CAD, FEA, Product Design', 'https://portfolio.com/hlee', 'Mechanical engineer with a passion for product design.'),
('Isabella', 'Perez', 'isabella.perez@example.com', '555-444-3333', '1993-05-05', 'Female', 'Dubai, UAE', 4, 'High School', 'Tourism', 'Travel Consultant', 'Customer Service, Travel Planning', 'https://portfolio.com/iperez', 'Travel consultant with a focus on customer satisfaction.'),
('Jack', 'Evans', 'jack.evans@example.com', NULL, '1987-11-11', 'Male', 'Berlin, Germany', 10, 'PhD', 'Physics', 'Research Scientist', 'Quantum Mechanics, Data Analysis', 'https://portfolio.com/jevans', 'Research scientist focused on quantum mechanics and analysis.'),
('Kelly', 'Ross', 'kelly.ross@example.com', '777-888-5555', '1990-06-19', 'Female', 'Melbourne, Australia', 6, 'Bachelor', 'Chemistry', 'Lab Technician', 'Lab Management, Chemical Analysis', 'https://portfolio.com/kross', 'Experienced lab technician with a focus on quality control.'),
('Leo', 'Price', 'leo.price@example.com', '222-333-4445', '1988-09-08', 'Male', 'Toronto, Canada', 8, 'Master', 'Computer Science', 'Backend Engineer', 'Java, Spring, Microservices', 'https://portfolio.com/lprice', 'Backend engineer with a focus on distributed systems.'),
('Maria', 'Hughes', 'maria.hughes@example.com', '999-000-1111', '1994-12-14', 'Female', 'Lisbon, Portugal', 3, 'Bachelor', 'Psychology', 'Mental Health Counselor', 'Therapy, Crisis Management', 'https://portfolio.com/mhughes', 'Mental health counselor with experience in crisis management.'),
('Nathan', 'White', 'nathan.white@example.com', '123-789-4560', '1986-08-20', 'Male', 'New Delhi, India', 12, 'PhD', 'Agricultural Science', 'Agronomist', 'Soil Science, Crop Management', 'https://portfolio.com/nwhite', 'Agronomist with a focus on sustainable agriculture.'),
('Olivia', 'Hall', 'olivia.hall@example.com', '456-789-3212', '1992-02-27', 'Female', 'Madrid, Spain', 6, 'Master', 'Education', 'Curriculum Developer', 'Instructional Design, Curriculum Planning', 'https://portfolio.com/ohall', 'Curriculum developer focused on e-learning materials.'),
('Peter', 'Young', 'peter.young@example.com', '333-222-1112', '1989-01-01', 'Male', 'Manila, Philippines', 9, 'Bachelor', 'Mechanical Engineering', 'Project Engineer', 'Project Management, AutoCAD', 'https://portfolio.com/pyoung', 'Project engineer with experience in large-scale projects.'),
('Quincy', 'Brooks', 'quincy.brooks@example.com', NULL, '1991-03-03', 'Male', 'Helsinki, Finland', 7, 'Master', 'History', 'Historian', 'Research, Writing', 'https://portfolio.com/qbrooks', 'Historian with a passion for European history.'),
('Rita', 'Morgan', 'rita.morgan@example.com', '654-789-4321', '1988-07-07', 'Female', 'Athens, Greece', 8, 'PhD', 'Philosophy', 'Philosophy Professor', 'Teaching, Critical Thinking', 'https://portfolio.com/rmorgan', 'Philosophy professor with a focus on ethics.'),
('Steve', 'Clark', 'steve.clark@example.com', '789-654-1234', '1985-09-17', 'Male', 'Shanghai, China', 10, 'Bachelor', 'Finance', 'Investment Analyst', 'Financial Modeling, Valuation', 'https://portfolio.com/sclark', 'Investment analyst with experience in equity research.'),
('Tina', 'Hill', 'tina.hill@example.com', '123-654-7890', '1994-04-14', 'Female', 'Bangkok, Thailand', 3, 'Bachelor', 'Graphic Design', 'Illustrator', 'Illustrator, Photoshop, InDesign', 'https://portfolio.com/thill', 'Illustrator with a focus on children’s book illustrations.'),
('Umar', 'Scott', 'umar.scott@example.com', '654-321-1234', '1987-08-01', 'Male', 'Mumbai, India', 9, 'Master', 'Biochemistry', 'Biochemist', 'Lab Research, Molecular Biology', 'https://portfolio.com/uscott', 'Biochemist focused on protein synthesis research.'),
('Victoria', 'Rogers', 'victoria.rogers@example.com', '321-123-6547', '1991-05-30', 'Female', 'Berlin, Germany', 4, 'Bachelor', 'Art History', 'Curator', 'Curating, Art History', 'https://portfolio.com/vrogers', 'Curator with a passion for modern art exhibitions.'),
('Will', 'Brown', 'will.brown@example.com', '987-321-6540', '1989-02-10', 'Male', 'Los Angeles, USA', 10, 'PhD', 'Neuroscience', 'Neuroscientist', 'Research, Data Analysis', 'https://portfolio.com/wbrown', 'Neuroscientist with a focus on cognitive behavior research.');
