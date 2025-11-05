/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.Date;
import java.util.List;

/**
 *
 * @author nguye
 */
public class Feedback {

    private int id;
    private int orderItemId;
    private int userId;
    private int rating;
    private String comment;
    private String status;
    private Date createdAt;
    private Date updatedAt;
    private String userFullName;
    private String userName;
    private String carTitle;
    private String carThumbnail;
    private int carId;
    private List<FeedbackReply> replies;
    private List<String> feedbackImages;

    public List<String> getFeedbackImages() {
        return feedbackImages;
    }

    public void setFeedbackImages(List<String> feedbackImages) {
        this.feedbackImages = feedbackImages;
    }

    public List<FeedbackReply> getReplies() {
        return replies;
    }

    public Feedback() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderItemId() {
        return orderItemId;
    }

    public void setOrderItemId(int orderItemId) {
        this.orderItemId = orderItemId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public String getUserFullName() {
        return userFullName;
    }

    public void setUserFullName(String userFullName) {
        this.userFullName = userFullName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getCarTitle() {
        return carTitle;
    }

    public void setCarTitle(String carTitle) {
        this.carTitle = carTitle;
    }

    public String getCarThumbnail() {
        return carThumbnail;
    }

    public void setCarThumbnail(String carThumbnail) {
        this.carThumbnail = carThumbnail;
    }

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    @Override
    public String toString() {
        return "Feedback{id=" + id + ", rating=" + rating + ", comment=" + comment + ", status=" + status + ", carId=" + carId + "}";
    }

    public void setReplies(List<FeedbackReply> replies) {
        this.replies = replies;
    }

}
