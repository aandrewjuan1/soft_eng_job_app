<?php

require_once("./Core/Database.php");

class Applicant extends Database {
    // Method to fetch and display all user information in a table
    public function show() {
        // Connect to the database
        $db = $this->connect();
        
        // Prepare the SQL query to fetch all user data
        $sql = "SELECT * FROM applicants";
        $stmt = $db->prepare($sql);
        $stmt->execute();
    
        // Fetch all results and return
        $applicants = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        return $applicants; // Return the data
    }
    
    
    

    // Method to store user data from the registration form
    public function store($data) {
        $db = $this->connect();
    
        // Prepare the SQL query to insert user data into the applicants table
        $sql = "INSERT INTO applicants (first_name, last_name, email, phone_number, birthdate, gender, location, years_of_experience, education_level, field_of_study, job_title, tech_stack, portfolio_url, bio) 
                VALUES (:first_name, :last_name, :email, :phone_number, :birthdate, :gender, :location, :years_of_experience, :education_level, :field_of_study, :job_title, :tech_stack, :portfolio_url, :bio)";
    
        // Prepare the SQL statement
        $stmt = $db->prepare($sql);
        
        // Bind the parameters from the $data array
        $stmt->bindParam(':first_name', $data['first_name']);
        $stmt->bindParam(':last_name', $data['last_name']);
        $stmt->bindParam(':email', $data['email']);
        $stmt->bindParam(':phone_number', $data['phone_number']);
        $stmt->bindParam(':birthdate', $data['birthdate']);
        $stmt->bindParam(':gender', $data['gender']);
        $stmt->bindParam(':location', $data['location']);
        $stmt->bindParam(':years_of_experience', $data['years_of_experience']);
        $stmt->bindParam(':education_level', $data['education_level']);
        $stmt->bindParam(':field_of_study', $data['field_of_study']);
        $stmt->bindParam(':job_title', $data['job_title']);
        $stmt->bindParam(':tech_stack', $data['tech_stack']);
        $stmt->bindParam(':portfolio_url', $data['portfolio_url']);
        $stmt->bindParam(':bio', $data['bio']);
    
        // Execute the query
        if ($stmt->execute()) {
            // Get the last inserted ID (new applicant's ID)
            $lastInsertedId = $db->lastInsertId();
    
            // Make sure lastInsertedId is not empty or false
            if (!$lastInsertedId) {
                echo "Error: Unable to retrieve the last inserted ID.";
                exit();
            }
    
            // Get the current user ID (logged in user)
            if (isset($_SESSION['user']['id'])) {
                $userId = $_SESSION['user']['id'];
            } else {
                echo "Error: User is not logged in.";
                exit();
            }
    
            // Log the activity
            $activityLog = new ActivityLog();
            $activityLog->logActivity($userId, 'INSERT', 'applicants', $lastInsertedId, null);
    
            // Redirect after successful creation
            header('Location: index.php');
            exit();
        } else {
            echo "Failed to register user.";
        }
    }
    


    public function delete($id) {
        // Connect to the database
        $db = $this->connect();
    
        // Prepare the SQL DELETE statement
        $sql = "DELETE FROM applicants WHERE id = :id";
        $stmt = $db->prepare($sql);
    
        // Bind the ID parameter
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
    
        // Execute the statement
        if ($stmt->execute()) {
            echo "Record with ID $id has been successfully deleted.";
        } else {
            echo "Error: Unable to delete the record.";
        }
    }

    public function getUserById($id) {
        // Connect to the database
        $db = $this->connect();
    
        // Prepare the SQL query to fetch the user data
        $sql = "SELECT * FROM applicants WHERE id = :id";
        $stmt = $db->prepare($sql);
        
        // Bind the ID parameter
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();
    
        // Fetch the user details
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function update($data) {
        // Connect to the database
        $db = $this->connect();
    
        // Prepare the SQL UPDATE statement
        $sql = "UPDATE applicants SET 
                    first_name = :first_name,
                    last_name = :last_name,
                    email = :email,
                    phone_number = :phone_number,
                    birthdate = :birthdate,
                    gender = :gender,
                    location = :location,
                    years_of_experience = :years_of_experience,
                    education_level = :education_level,
                    field_of_study = :field_of_study,
                    job_title = :job_title,
                    tech_stack = :tech_stack,
                    portfolio_url = :portfolio_url,
                    bio = :bio
                WHERE id = :id";
        $stmt = $db->prepare($sql);
    
        // Bind the parameters
        $stmt->bindParam(':first_name', $data['first_name']);
        $stmt->bindParam(':last_name', $data['last_name']);
        $stmt->bindParam(':email', $data['email']);
        $stmt->bindParam(':phone_number', $data['phone_number']);
        $stmt->bindParam(':birthdate', $data['birthdate']);
        $stmt->bindParam(':gender', $data['gender']);
        $stmt->bindParam(':location', $data['location']);
        $stmt->bindParam(':years_of_experience', $data['years_of_experience'], PDO::PARAM_INT);
        $stmt->bindParam(':education_level', $data['education_level']);
        $stmt->bindParam(':field_of_study', $data['field_of_study']);
        $stmt->bindParam(':job_title', $data['job_title']);
        $stmt->bindParam(':tech_stack', $data['tech_stack']);
        $stmt->bindParam(':portfolio_url', $data['portfolio_url']);
        $stmt->bindParam(':bio', $data['bio']);
        $stmt->bindParam(':id', $data['id'], PDO::PARAM_INT);
    
        // Execute the statement
        if ($stmt->execute()) {
            echo "Record with ID {$data['id']} has been successfully updated.";
        } else {
            echo "Error: Unable to update the record.";
        }
    }
    
    public function search($query) {
        $db = $this->connect();
        $activityLog = new ActivityLog(); // Create an instance of ActivityLog
    
        // Get the current user ID from session (assuming the user is logged in)
        $userId = $_SESSION['user']['id'];
    
        // Check if the search query is not empty before logging activity
        if (!empty($query)) {
            // Log the search activity
            $activityLog->logActivity($userId, 'SEARCH', 'applicants', null, $query); // Log the activity
        }
    
        // SQL query to search all columns except for the primary key
        $sql = "SELECT * FROM applicants WHERE 
            first_name LIKE :query OR
            last_name LIKE :query OR
            email LIKE :query OR
            phone_number LIKE :query OR
            birthdate LIKE :query OR
            gender LIKE :query OR
            location LIKE :query OR
            years_of_experience LIKE :query OR
            education_level LIKE :query OR
            field_of_study LIKE :query OR
            job_title LIKE :query OR
            tech_stack LIKE :query OR
            portfolio_url LIKE :query OR
            bio LIKE :query";
    
        $stmt = $db->prepare($sql);
    
        // Use wildcard search
        $query = "%$query%";
        $stmt->bindParam(':query', $query, PDO::PARAM_STR);
    
        $stmt->execute();
    
        // Fetch and return results
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    
    
    
    
}
?>