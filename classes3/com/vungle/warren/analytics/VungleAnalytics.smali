.class public Lcom/vungle/warren/analytics/VungleAnalytics;
.super Ljava/lang/Object;
.source "VungleAnalytics.java"

# interfaces
.implements Lcom/vungle/warren/analytics/AdAnalytics;


# static fields
.field private static final TAG:Ljava/lang/String; = "VungleAnalytics"


# instance fields
.field private final client:Lcom/vungle/warren/VungleApiClient;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/VungleApiClient;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/vungle/warren/analytics/VungleAnalytics;->client:Lcom/vungle/warren/VungleApiClient;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 18
    sget-object v0, Lcom/vungle/warren/analytics/VungleAnalytics;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public ping([Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    array-length v0, p1

    if-nez v0, :cond_4

    return-object p1

    .line 32
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_52

    aget-object v4, p1, v3

    .line 34
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 36
    :try_start_16
    iget-object v5, p0, Lcom/vungle/warren/analytics/VungleAnalytics;->client:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v5, v4}, Lcom/vungle/warren/VungleApiClient;->pingTPAT(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 37
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Lcom/vungle/warren/VungleApiClient$ClearTextTrafficException; {:try_start_16 .. :try_end_21} :catch_39
    .catch Ljava/net/MalformedURLException; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_4f

    .line 42
    :catch_22
    sget-object v5, Lcom/vungle/warren/analytics/VungleAnalytics;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid Url : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 40
    :catch_39
    sget-object v5, Lcom/vungle/warren/analytics/VungleAnalytics;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleartext Network Traffic is Blocked : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 46
    :cond_52
    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public ri(Lcom/google/gson/JsonObject;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/vungle/warren/analytics/VungleAnalytics;->client:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/VungleApiClient;->ri(Lcom/google/gson/JsonObject;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    new-instance v0, Lcom/vungle/warren/analytics/VungleAnalytics$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/analytics/VungleAnalytics$1;-><init>(Lcom/vungle/warren/analytics/VungleAnalytics;)V

    invoke-interface {p1, v0}, Lcom/vungle/warren/network/Call;->enqueue(Lcom/vungle/warren/network/Callback;)V

    return-void
.end method
