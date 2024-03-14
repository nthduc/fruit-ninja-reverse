.class public interface abstract Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;
.super Ljava/lang/Object;
.source "IGooglePlayPurchasing.java"


# virtual methods
.method public abstract NotifyUnityOfProducts(Lcom/unity/purchasing/googleplay/Inventory;)V
.end method

.method public abstract NotifyUnityOfPurchase(Lcom/unity/purchasing/googleplay/Purchase;Z)V
.end method

.method public abstract SetAggressivelyRecoverLostPurchases(Z)V
.end method

.method public abstract getHelper()Lcom/unity/purchasing/googleplay/IabHelper;
.end method

.method public abstract getInventory()Lcom/unity/purchasing/googleplay/Inventory;
.end method

.method public abstract getManager()Lcom/unity/purchasing/googleplay/IBillingServiceManager;
.end method

.method public abstract getTimekeeper()Lcom/unity/purchasing/googleplay/ITimekeeper;
.end method
