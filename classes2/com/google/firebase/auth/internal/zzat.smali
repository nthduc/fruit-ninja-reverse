.class public final Lcom/google/firebase/auth/internal/zzat;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/firebase_auth/zzfh;)Lcom/google/firebase/auth/MultiFactorInfo;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 3
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzfh;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 5
    new-instance v0, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzfh;->zzb()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzfh;->zzc()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzfh;->zzd()J

    move-result-wide v5

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzfh;->zza()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/auth/PhoneMultiFactorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_24
    return-object v0
.end method

.method public static zza(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_auth/zzfh;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/MultiFactorInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_29

    .line 12
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_29

    .line 14
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase_auth/zzfh;

    .line 16
    invoke-static {v1}, Lcom/google/firebase/auth/internal/zzat;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfh;)Lcom/google/firebase/auth/MultiFactorInfo;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_28
    return-object v0

    .line 13
    :cond_29
    :goto_29
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzbg;->zza()Lcom/google/android/gms/internal/firebase_auth/zzbg;

    move-result-object p0

    return-object p0
.end method
