.class public Lcom/helpshift/storage/HelpshiftUnityStorage;
.super Ljava/lang/Object;
.source "HelpshiftUnityStorage.java"


# static fields
.field public static final API_KEY:Ljava/lang/String; = "apiKey"

.field public static final APP_ID:Ljava/lang/String; = "appId"

.field public static final DOMAIN_NAME:Ljava/lang/String; = "domainName"

.field public static final INSTALL_CONFIG:Ljava/lang/String; = "installConfig"

.field private static final TAG:Ljava/lang/String; = "Helpshift_UnityStore"

.field public static final UNITY_MESSAGE_HANDLER_KEY:Ljava/lang/String; = "unityMessageHandler"

.field private static storage:Lcom/helpshift/storage/HelpshiftUnityStorage;


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "__helpshift_unity_prefs"

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/storage/HelpshiftUnityStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/helpshift/storage/HelpshiftUnityStorage;
    .registers 3

    .line 33
    sget-object v0, Lcom/helpshift/storage/HelpshiftUnityStorage;->storage:Lcom/helpshift/storage/HelpshiftUnityStorage;

    if-nez v0, :cond_17

    .line 34
    const-class v0, Lcom/helpshift/storage/HelpshiftUnityStorage;

    monitor-enter v0

    .line 35
    :try_start_7
    sget-object v1, Lcom/helpshift/storage/HelpshiftUnityStorage;->storage:Lcom/helpshift/storage/HelpshiftUnityStorage;

    if-nez v1, :cond_12

    .line 36
    new-instance v1, Lcom/helpshift/storage/HelpshiftUnityStorage;

    invoke-direct {v1, p0}, Lcom/helpshift/storage/HelpshiftUnityStorage;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/helpshift/storage/HelpshiftUnityStorage;->storage:Lcom/helpshift/storage/HelpshiftUnityStorage;

    .line 38
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 41
    :cond_17
    :goto_17
    sget-object p0, Lcom/helpshift/storage/HelpshiftUnityStorage;->storage:Lcom/helpshift/storage/HelpshiftUnityStorage;

    return-object p0
.end method


# virtual methods
.method public getMap(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    invoke-static {p1}, Lcom/helpshift/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_c
    const/4 v1, 0x0

    .line 112
    :try_start_d
    iget-object v2, p0, Lcom/helpshift/storage/HelpshiftUnityStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v2}, Lcom/helpshift/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    return-object v0

    .line 118
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 122
    array-length v3, v2

    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 124
    :goto_30
    array-length v5, v3

    if-ge v4, v5, :cond_3e

    .line 125
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 129
    :cond_3e
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_43} :catch_6a
    .catchall {:try_start_d .. :try_end_43} :catchall_67

    .line 130
    :try_start_43
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_62
    .catchall {:try_start_43 .. :try_end_48} :catchall_5f

    .line 131
    :try_start_48
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4e} :catch_59
    .catchall {:try_start_48 .. :try_end_4e} :catchall_56

    .line 139
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 143
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_54} :catch_54

    :catch_54
    move-object v0, v1

    goto :goto_8c

    :catchall_56
    move-exception p1

    move-object v1, v3

    goto :goto_60

    :catch_59
    move-exception v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v7

    goto :goto_6c

    :catchall_5f
    move-exception p1

    :goto_60
    move-object v3, v2

    goto :goto_8e

    :catch_62
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_6c

    :catchall_67
    move-exception p1

    move-object v3, v1

    goto :goto_8e

    :catch_6a
    move-exception v2

    move-object v3, v1

    :goto_6c
    :try_start_6c
    const-string v4, "Helpshift_UnityStore"

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_82
    .catchall {:try_start_6c .. :try_end_82} :catchall_8d

    if-eqz v1, :cond_87

    .line 139
    :try_start_84
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_87
    if-eqz v3, :cond_8c

    .line 143
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8c} :catch_8c

    :catch_8c
    :cond_8c
    :goto_8c
    return-object v0

    :catchall_8d
    move-exception p1

    :goto_8e
    if-eqz v1, :cond_93

    .line 139
    :try_start_90
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_93
    if-eqz v3, :cond_98

    .line 143
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_98} :catch_98

    .line 149
    :catch_98
    :cond_98
    throw p1

    return-void
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 56
    invoke-static {p1}, Lcom/helpshift/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 59
    :cond_9
    iget-object v0, p0, Lcom/helpshift/storage/HelpshiftUnityStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 46
    invoke-static {p1}, Lcom/helpshift/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 50
    :cond_7
    iget-object v0, p0, Lcom/helpshift/storage/HelpshiftUnityStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putMap(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Lcom/helpshift/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 71
    :try_start_8
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_3b
    .catchall {:try_start_8 .. :try_end_d} :catchall_38

    .line 72
    :try_start_d
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_36
    .catchall {:try_start_d .. :try_end_12} :catchall_5c

    .line 73
    :try_start_12
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 76
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p2

    .line 78
    iget-object v0, p0, Lcom/helpshift/storage/HelpshiftUnityStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_29} :catch_33
    .catchall {:try_start_12 .. :try_end_29} :catchall_30

    .line 88
    :try_start_29
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 92
    :goto_2c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2f} :catch_5b

    goto :goto_5b

    :catchall_30
    move-exception p1

    move-object v0, v2

    goto :goto_5d

    :catch_33
    move-exception p2

    move-object v0, v2

    goto :goto_3d

    :catch_36
    move-exception p2

    goto :goto_3d

    :catchall_38
    move-exception p1

    move-object v1, v0

    goto :goto_5d

    :catch_3b
    move-exception p2

    move-object v1, v0

    :goto_3d
    :try_start_3d
    const-string v2, "Helpshift_UnityStore"

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error storing value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_3d .. :try_end_53} :catchall_5c

    if-eqz v0, :cond_58

    .line 88
    :try_start_55
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_5b

    :cond_58
    if-eqz v1, :cond_5b

    goto :goto_2c

    :catch_5b
    :cond_5b
    :goto_5b
    return-void

    :catchall_5c
    move-exception p1

    :goto_5d
    if-eqz v0, :cond_62

    :try_start_5f
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    :cond_62
    if-eqz v1, :cond_67

    .line 92
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_67} :catch_67

    .line 98
    :catch_67
    :cond_67
    throw p1

    return-void
.end method
