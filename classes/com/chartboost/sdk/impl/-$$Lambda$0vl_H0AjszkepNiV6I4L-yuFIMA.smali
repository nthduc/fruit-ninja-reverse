.class public final synthetic Lcom/chartboost/sdk/impl/-$$Lambda$0vl_H0AjszkepNiV6I4L-yuFIMA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/chartboost/sdk/impl/w;


# direct methods
.method public synthetic constructor <init>(Lcom/chartboost/sdk/impl/w;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/-$$Lambda$0vl_H0AjszkepNiV6I4L-yuFIMA;->f$0:Lcom/chartboost/sdk/impl/w;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/-$$Lambda$0vl_H0AjszkepNiV6I4L-yuFIMA;->f$0:Lcom/chartboost/sdk/impl/w;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w;->c()V

    return-void
.end method
