.class final Lcom/helpshift/common/poller/HttpBackoff$RetryPolicy$3;
.super Ljava/lang/Object;
.source "HttpBackoff.java"

# interfaces
.implements Lcom/helpshift/common/poller/HttpBackoff$RetryPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/common/poller/HttpBackoff$RetryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldRetry(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
