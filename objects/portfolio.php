<?php

class Portfolio {
    private $conn;

    public function __construct($connection) {
        $this->conn = $connection;
    }

    public function allPortfolioItems() {

        $query = 'SELECT * FROM portfolio_items';

        $stmt = $this->conn->prepare($query);

        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);

    }

    public function portfolioItem($id) {

        $query = 'SELECT * FROM portfolio_items WHERE id = ' . $id;

        $stmt = $this->conn->prepare($query); 

        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);

    }

}
