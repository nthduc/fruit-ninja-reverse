.class final Lcom/google/android/gms/internal/firebase_auth/zzjj;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjk;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 20
    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzjh;

    .line 21
    check-cast p3, Lcom/google/android/gms/internal/firebase_auth/zzjf;

    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_auth/zzjh;->isEmpty()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_c

    return p3

    .line 25
    :cond_c
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_auth/zzjh;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1b

    return p3

    :cond_1b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzjh;

    .line 12
    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzjh;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_auth/zzjh;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzjh;->zzd()Z

    move-result v0

    if-nez v0, :cond_14

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzjh;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzjh;

    move-result-object p1

    .line 16
    :cond_14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjh;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjh;)V

    :cond_17
    return-object p1
.end method

.method public final zza(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzjh;

    return-object p1
.end method

.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzji;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/firebase_auth/zzji<",
            "**>;"
        }
    .end annotation

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzjf;

    .line 4
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final zzc(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzjh;

    return-object p1
.end method

.method public final zzd(Ljava/lang/Object;)Z
    .registers 2

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzjh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzjh;->zzd()Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final zze(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzjh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzjh;->zzc()V

    return-object p1
.end method

.method public final zzf(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjh;->zza()Lcom/google/android/gms/internal/firebase_auth/zzjh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzjh;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzjh;

    move-result-object p1

    return-object p1
.end method
