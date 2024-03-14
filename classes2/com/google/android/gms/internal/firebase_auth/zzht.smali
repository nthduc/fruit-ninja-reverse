.class final Lcom/google/android/gms/internal/firebase_auth/zzht;
.super Lcom/google/android/gms/internal/firebase_auth/zzhu;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzhu<",
        "Lcom/google/android/gms/internal/firebase_auth/zzif$zze;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhu;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(Ljava/util/Map$Entry;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 14
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zze;

    .line 15
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/firebase_auth/zzhv<",
            "Lcom/google/android/gms/internal/firebase_auth/zzif$zze;",
            ">;"
        }
    .end annotation

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzhv;

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/firebase_auth/zzhs;Lcom/google/android/gms/internal/firebase_auth/zzjn;I)Ljava/lang/Object;
    .registers 4

    .line 19
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhs;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;I)Lcom/google/android/gms/internal/firebase_auth/zzif$zzd;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/firebase_auth/zzke;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzhs;Lcom/google/android/gms/internal/firebase_auth/zzhv;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkz;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_auth/zzke;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhs;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhv<",
            "Lcom/google/android/gms/internal/firebase_auth/zzif$zze;",
            ">;TUB;",
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzif$zzd;

    .line 12
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/firebase_auth/zzgv;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzhs;Lcom/google/android/gms/internal/firebase_auth/zzhv;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_auth/zzgv;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhs;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhv<",
            "Lcom/google/android/gms/internal/firebase_auth/zzif$zze;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzif$zzd;

    .line 23
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/firebase_auth/zzke;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzhs;Lcom/google/android/gms/internal/firebase_auth/zzhv;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_auth/zzke;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhs;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhv<",
            "Lcom/google/android/gms/internal/firebase_auth/zzif$zze;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzif$zzd;

    .line 21
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/firebase_auth/zzls;Ljava/util/Map$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_auth/zzls;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zze;

    .line 18
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Z
    .registers 2

    .line 2
    instance-of p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;

    return p1
.end method

.method final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/firebase_auth/zzhv<",
            "Lcom/google/android/gms/internal/firebase_auth/zzif$zze;",
            ">;"
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzhv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->zzc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzhv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzhv;

    iput-object v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzhv;

    .line 7
    :cond_14
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzhv;

    return-object p1
.end method

.method final zzc(Ljava/lang/Object;)V
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->zzb()V

    return-void
.end method
