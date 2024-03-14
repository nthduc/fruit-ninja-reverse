.class Lcom/facebook/UserSettingsManager$UserSetting;
.super Ljava/lang/Object;
.source "UserSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/UserSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserSetting"
.end annotation


# instance fields
.field defaultVal:Z

.field key:Ljava/lang/String;

.field lastTS:J

.field value:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-boolean p1, p0, Lcom/facebook/UserSettingsManager$UserSetting;->defaultVal:Z

    .line 415
    iput-object p2, p0, Lcom/facebook/UserSettingsManager$UserSetting;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getValue()Z
    .registers 2

    .line 419
    iget-object v0, p0, Lcom/facebook/UserSettingsManager$UserSetting;->value:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/facebook/UserSettingsManager$UserSetting;->defaultVal:Z

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_b
    return v0
.end method
