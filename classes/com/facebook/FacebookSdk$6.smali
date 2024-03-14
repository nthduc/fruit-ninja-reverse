.class final Lcom/facebook/FacebookSdk$6;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .registers 2

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    .line 371
    sput-boolean p1, Lcom/facebook/FacebookSdk;->ignoreAppSwitchToLoggedOut:Z

    :cond_5
    return-void
.end method
