.class public Lcom/facebook/FacebookAuthorizationException;
.super Lcom/facebook/FacebookException;
.source "FacebookAuthorizationException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/facebook/FacebookException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
