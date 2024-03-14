.class public Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;
.super Ljava/lang/Object;
.source "SourceApplicationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/internal/SourceApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;)Lcom/facebook/appevents/internal/SourceApplicationInfo;
    .registers 7

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 109
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    return-object v1

    :cond_16
    const-string v0, ""

    .line 119
    :cond_18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "_fbSourceApplicationHasBeenSet"

    if-eqz p0, :cond_40

    .line 121
    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_40

    .line 122
    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    invoke-static {p0}, Lbolts/AppLinks;->getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_40

    const-string v2, "referer_app_link"

    .line 126
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3f

    const-string v0, "package"

    .line 128
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3f
    const/4 v2, 0x1

    :cond_40
    if-eqz p0, :cond_45

    .line 135
    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    :cond_45
    new-instance p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;

    invoke-direct {p0, v0, v2, v1}, Lcom/facebook/appevents/internal/SourceApplicationInfo;-><init>(Ljava/lang/String;ZLcom/facebook/appevents/internal/SourceApplicationInfo$1;)V

    return-object p0
.end method
