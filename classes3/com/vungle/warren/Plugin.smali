.class public Lcom/vungle/warren/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Plugin"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWrapperInfo(Lcom/vungle/warren/VungleApiClient$WrapperFramework;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_49

    .line 15
    sget-object v0, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->none:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    if-eq p0, v0, :cond_49

    .line 16
    sput-object p0, Lcom/vungle/warren/VungleApiClient;->WRAPPER_FRAMEWORK_SELECTED:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/vungle/warren/VungleApiClient;->HEADER_UA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/vungle/warren/VungleApiClient;->HEADER_UA:Ljava/lang/String;

    if-eqz p1, :cond_41

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_41

    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/vungle/warren/VungleApiClient;->HEADER_UA:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/vungle/warren/VungleApiClient;->HEADER_UA:Ljava/lang/String;

    goto :goto_50

    .line 21
    :cond_41
    sget-object p0, Lcom/vungle/warren/Plugin;->TAG:Ljava/lang/String;

    const-string p1, "Wrapper framework version is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 24
    :cond_49
    sget-object p0, Lcom/vungle/warren/Plugin;->TAG:Ljava/lang/String;

    const-string p1, "Wrapper is null or is not none"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_50
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_5d

    .line 28
    sget-object p0, Lcom/vungle/warren/Plugin;->TAG:Ljava/lang/String;

    const-string p1, "VUNGLE WARNING: SDK already initialized, wou should set wrapper info before"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    return-void
.end method
