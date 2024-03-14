.class Lcom/facebook/AccessTokenManager$RefreshResult;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshResult"
.end annotation


# instance fields
.field public accessToken:Ljava/lang/String;

.field public dataAccessExpirationTime:Ljava/lang/Long;

.field public expiresAt:I

.field public graphDomain:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/AccessTokenManager$1;)V
    .registers 2

    .line 208
    invoke-direct {p0}, Lcom/facebook/AccessTokenManager$RefreshResult;-><init>()V

    return-void
.end method
