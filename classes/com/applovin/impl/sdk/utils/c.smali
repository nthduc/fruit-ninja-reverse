.class public Lcom/applovin/impl/sdk/utils/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/applovin/impl/sdk/utils/c;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:Landroid/os/Bundle;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/utils/c;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 10

    const-string v0, "AndroidManifest"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_16} :catch_1c
    .catchall {:try_start_6 .. :try_end_16} :catchall_19

    :goto_16
    iput-object v1, p0, Lcom/applovin/impl/sdk/utils/c;->c:Landroid/os/Bundle;

    goto :goto_23

    :catchall_19
    move-exception p1

    goto/16 :goto_8a

    :catch_1c
    move-exception v2

    :try_start_1d
    const-string v3, "Failed to get meta data."

    invoke-static {v0, v3, v2}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_19

    goto :goto_16

    :goto_23
    const/4 v1, 0x0

    :try_start_24
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v2, "AndroidManifest.xml"

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_32} :catch_7c
    .catchall {:try_start_24 .. :try_end_32} :catchall_79

    const/4 v3, 0x0

    :cond_33
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v4, v2, :cond_6b

    :try_start_37
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "application"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const/4 v2, 0x0

    :goto_44
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v4

    if-ge v2, v4, :cond_6b

    invoke-interface {p1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "networkSecurityConfig"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v3, v2

    goto :goto_6b

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_6b
    :goto_6b
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_6f} :catch_76
    .catchall {:try_start_37 .. :try_end_6f} :catchall_74

    if-ne v2, v5, :cond_33

    iput v3, p0, Lcom/applovin/impl/sdk/utils/c;->d:I

    goto :goto_84

    :catchall_74
    move-exception p1

    goto :goto_87

    :catch_76
    move-exception p1

    move v1, v3

    goto :goto_7d

    :catchall_79
    move-exception p1

    const/4 v3, 0x0

    goto :goto_87

    :catch_7c
    move-exception p1

    :goto_7d
    :try_start_7d
    const-string v2, "Failed to parse AndroidManifest.xml."

    invoke-static {v0, v2, p1}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_85

    iput v1, p0, Lcom/applovin/impl/sdk/utils/c;->d:I

    :goto_84
    return-void

    :catchall_85
    move-exception p1

    move v3, v1

    :goto_87
    iput v3, p0, Lcom/applovin/impl/sdk/utils/c;->d:I

    throw p1

    :goto_8a
    iput-object v1, p0, Lcom/applovin/impl/sdk/utils/c;->c:Landroid/os/Bundle;

    throw p1

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/c;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/utils/c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/applovin/impl/sdk/utils/c;->a:Lcom/applovin/impl/sdk/utils/c;

    if-nez v1, :cond_e

    new-instance v1, Lcom/applovin/impl/sdk/utils/c;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/utils/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/applovin/impl/sdk/utils/c;->a:Lcom/applovin/impl/sdk/utils/c;

    :cond_e
    sget-object p0, Lcom/applovin/impl/sdk/utils/c;->a:Lcom/applovin/impl/sdk/utils/c;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .registers 2

    iget v0, p0, Lcom/applovin/impl/sdk/utils/c;->d:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
