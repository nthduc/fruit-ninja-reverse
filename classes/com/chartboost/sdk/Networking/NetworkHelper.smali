.class public Lcom/chartboost/sdk/Networking/NetworkHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static debugEndpoint:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Networking/NetworkHelper;->debugEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "normalizedUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/chartboost/sdk/Networking/NetworkHelper;->debugEndpoint:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Chartboost"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object p0, Lcom/chartboost/sdk/Networking/NetworkHelper;->debugEndpoint:Ljava/lang/String;

    :cond_2c
    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    const-string v1, ""

    const-string v2, "/"

    if-eqz p1, :cond_40

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    move-object v2, v1

    :cond_40
    aput-object v2, v0, p0

    const/4 p0, 0x2

    if-eqz p1, :cond_46

    goto :goto_47

    :cond_46
    move-object p1, v1

    :goto_47
    aput-object p1, v0, p0

    const-string p0, "%s%s%s"

    .line 9
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static setDebugUrl(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/chartboost/sdk/Networking/NetworkHelper;->debugEndpoint:Ljava/lang/String;

    return-void
.end method
