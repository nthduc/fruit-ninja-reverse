.class public Lcom/facebook/login/widget/DeviceLoginButton;
.super Lcom/facebook/login/widget/LoginButton;
.source "DeviceLoginButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;
    }
.end annotation


# instance fields
.field private deviceRedirectUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/LoginButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/facebook/login/widget/LoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/login/widget/LoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getDeviceRedirectUri()Landroid/net/Uri;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/facebook/login/widget/DeviceLoginButton;->deviceRedirectUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getNewLoginClickListener()Lcom/facebook/login/widget/LoginButton$LoginClickListener;
    .registers 3

    .line 93
    new-instance v0, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;-><init>(Lcom/facebook/login/widget/DeviceLoginButton;Lcom/facebook/login/widget/DeviceLoginButton$1;)V

    return-object v0
.end method

.method public setDeviceRedirectUri(Landroid/net/Uri;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/facebook/login/widget/DeviceLoginButton;->deviceRedirectUri:Landroid/net/Uri;

    return-void
.end method
