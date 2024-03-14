.class interface abstract Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;
.super Ljava/lang/Object;
.source "AdColonyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/adcolony/AdColonyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ResultListener"
.end annotation


# virtual methods
.method public abstract onFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
.end method

.method public abstract onSuccess()V
.end method
