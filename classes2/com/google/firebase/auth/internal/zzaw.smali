.class public final Lcom/google/firebase/auth/internal/zzaw;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private zza:Landroid/content/Context;

.field private zzb:Ljava/lang/String;

.field private zzc:Landroid/content/SharedPreferences;

.field private zzd:Lcom/google/android/gms/common/logging/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzaw;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzaw;->zza:Landroid/content/Context;

    const/4 p1, 0x1

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/firebase/auth/internal/zzaw;->zzb:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "com.google.firebase.auth.api.Store.%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/google/firebase/auth/internal/zzaw;->zza:Landroid/content/Context;

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzaw;->zzc:Landroid/content/SharedPreferences;

    .line 7
    new-instance p1, Lcom/google/android/gms/common/logging/Logger;

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "StorageHelpers"

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/common/logging/Logger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzaw;->zzd:Lcom/google/android/gms/common/logging/Logger;

    return-void
.end method

.method private final zza(Lorg/json/JSONObject;)Lcom/google/firebase/auth/internal/zzn;
    .registers 15

    const-string v0, "userMultiFactorInfo"

    const-string v1, "userMetadata"

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "cachedTokenState"

    .line 76
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "applicationName"

    .line 77
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "anonymous"

    .line 78
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "2"

    const-string v7, "version"

    .line 80
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_22

    move-object v6, v7

    :cond_22
    const-string v7, "userInfos"

    .line 83
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 84
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 85
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_33
    if-ge v11, v8, :cond_43

    .line 87
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/firebase/auth/internal/zzj;->zza(Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzj;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    .line 89
    :cond_43
    invoke-static {v4}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v4

    .line 90
    new-instance v7, Lcom/google/firebase/auth/internal/zzn;

    invoke-direct {v7, v4, v9}, Lcom/google/firebase/auth/internal/zzn;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V

    .line 91
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_59

    .line 92
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object v3

    .line 93
    invoke-virtual {v7, v3}, Lcom/google/firebase/auth/FirebaseUser;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;)V

    :cond_59
    if-nez v5, :cond_5e

    .line 95
    invoke-virtual {v7}, Lcom/google/firebase/auth/FirebaseUser;->zzb()Lcom/google/firebase/auth/FirebaseUser;

    .line 96
    :cond_5e
    invoke-virtual {v7, v6}, Lcom/google/firebase/auth/internal/zzn;->zza(Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzn;

    .line 97
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 98
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 99
    invoke-static {v1}, Lcom/google/firebase/auth/internal/zzp;->zza(Lorg/json/JSONObject;)Lcom/google/firebase/auth/internal/zzp;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 101
    invoke-virtual {v7, v1}, Lcom/google/firebase/auth/internal/zzn;->zza(Lcom/google/firebase/auth/internal/zzp;)V

    .line 102
    :cond_74
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 103
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_b1

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    :goto_85
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v10, v1, :cond_ae

    .line 107
    invoke-virtual {p1, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "factorIdKey"

    .line 110
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "phone"

    .line 111
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 112
    invoke-static {v3}, Lcom/google/firebase/auth/PhoneMultiFactorInfo;->zza(Lorg/json/JSONObject;)Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    move-result-object v1

    goto :goto_a8

    :cond_a7
    move-object v1, v2

    .line 114
    :goto_a8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_85

    .line 116
    :cond_ae
    invoke-virtual {v7, v0}, Lcom/google/firebase/auth/FirebaseUser;->zzb(Ljava/util/List;)V
    :try_end_b1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_b1} :catch_b8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_b1} :catch_b6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_b1} :catch_b4
    .catch Lcom/google/firebase/auth/api/zza; {:try_start_5 .. :try_end_b1} :catch_b2

    :cond_b1
    return-object v7

    :catch_b2
    move-exception p1

    goto :goto_b9

    :catch_b4
    move-exception p1

    goto :goto_b9

    :catch_b6
    move-exception p1

    goto :goto_b9

    :catch_b8
    move-exception p1

    .line 119
    :goto_b9
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaw;->zzd:Lcom/google/android/gms/common/logging/Logger;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/logging/Logger;->wtf(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private final zzc(Lcom/google/firebase/auth/FirebaseUser;)Ljava/lang/String;
    .registers 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 44
    const-class v1, Lcom/google/firebase/auth/internal/zzn;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 45
    check-cast p1, Lcom/google/firebase/auth/internal/zzn;

    const/4 v1, 0x0

    :try_start_14
    const-string v2, "cachedTokenState"

    .line 46
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "applicationName"

    .line 47
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzc()Lcom/google/firebase/FirebaseApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v3, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    .line 48
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzn;->zzh()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5c

    .line 50
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzn;->zzh()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 52
    :goto_41
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_57

    .line 53
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/auth/internal/zzj;

    .line 54
    invoke-virtual {v5}, Lcom/google/firebase/auth/internal/zzj;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    :cond_57
    const-string v3, "userInfos"

    .line 56
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5c
    const-string v2, "anonymous"

    .line 57
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "version"

    const-string v3, "2"

    .line 58
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getMetadata()Lcom/google/firebase/auth/FirebaseUserMetadata;

    move-result-object v2

    if-eqz v2, :cond_81

    const-string v2, "userMetadata"

    .line 61
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getMetadata()Lcom/google/firebase/auth/FirebaseUserMetadata;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/auth/internal/zzp;

    invoke-virtual {v3}, Lcom/google/firebase/auth/internal/zzp;->zza()Lorg/json/JSONObject;

    move-result-object v3

    .line 62
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_81
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getMultiFactor()Lcom/google/firebase/auth/MultiFactor;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzr;

    invoke-virtual {p1}, Lcom/google/firebase/auth/MultiFactor;->getEnrolledFactors()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b4

    .line 65
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b4

    .line 66
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 67
    :goto_99
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_af

    .line 68
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/auth/MultiFactorInfo;

    invoke-virtual {v4}, Lcom/google/firebase/auth/MultiFactorInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    :cond_af
    const-string p1, "userMultiFactorInfo"

    .line 70
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    :cond_b4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_b8} :catch_b9

    return-object p1

    :catch_b9
    move-exception p1

    .line 73
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaw;->zzd:Lcom/google/android/gms/common/logging/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to turn object into JSON"

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->wtf(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 74
    new-instance v0, Lcom/google/firebase/auth/api/zza;

    invoke-direct {v0, p1}, Lcom/google/firebase/auth/api/zza;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_c9
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final zza()Lcom/google/firebase/auth/FirebaseUser;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "type"

    .line 16
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzaw;->zzc:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v3, "com.google.firebase.auth.FIREBASE_USER"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    return-object v2

    .line 20
    :cond_12
    :try_start_12
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 22
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 24
    invoke-direct {p0, v3}, Lcom/google/firebase/auth/internal/zzaw;->zza(Lorg/json/JSONObject;)Lcom/google/firebase/auth/internal/zzn;

    move-result-object v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2d} :catch_2e

    return-object v0

    :catch_2e
    :cond_2e
    return-object v2
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;)V
    .registers 4

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/firebase/auth/internal/zzaw;->zzc(Lcom/google/firebase/auth/FirebaseUser;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 13
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaw;->zzc:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.google.firebase.auth.FIREBASE_USER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1c
    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase_auth/zzff;)V
    .registers 6

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaw;->zzc:Landroid/content/SharedPreferences;

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzh()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 33
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaw;->zzc:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final zzb(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase_auth/zzff;
    .registers 5

    .line 35
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaw;->zzc:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object p1

    return-object p1

    :cond_21
    return-object v1
.end method
