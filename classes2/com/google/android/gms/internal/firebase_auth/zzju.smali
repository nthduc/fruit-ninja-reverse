.class final Lcom/google/android/gms/internal/firebase_auth/zzju;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzkd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase_auth/zzkd<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase_auth/zzjn;

.field private final zzb:Lcom/google/android/gms/internal/firebase_auth/zzkz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/firebase_auth/zzhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzhu<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzkz;Lcom/google/android/gms/internal/firebase_auth/zzhu;Lcom/google/android/gms/internal/firebase_auth/zzjn;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "**>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhu<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzjn;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzc:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zza:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/firebase_auth/zzkz;Lcom/google/android/gms/internal/firebase_auth/zzhu;Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/android/gms/internal/firebase_auth/zzju;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "**>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhu<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzjn;",
            ")",
            "Lcom/google/android/gms/internal/firebase_auth/zzju<",
            "TT;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzju;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzju;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzkz;Lcom/google/android/gms/internal/firebase_auth/zzhu;Lcom/google/android/gms/internal/firebase_auth/zzjn;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 19
    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzc:Z

    if-eqz v1, :cond_1b

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1b
    return v0
.end method

.method public final zza()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zza:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzjn;->zzae()Lcom/google/android/gms/internal/firebase_auth/zzjq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzjq;->zzf()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzke;Lcom/google/android/gms/internal/firebase_auth/zzhs;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/firebase_auth/zzke;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhs;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    .line 44
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 45
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object v3

    .line 46
    :cond_c
    :try_start_c
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zza()I

    move-result v4
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_8e

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_19

    .line 48
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_19
    :try_start_19
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzb()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_3e

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_39

    .line 56
    iget-object v5, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zza:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    ushr-int/lit8 v4, v4, 0x3

    .line 58
    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Lcom/google/android/gms/internal/firebase_auth/zzhs;Lcom/google/android/gms/internal/firebase_auth/zzjn;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 60
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Lcom/google/android/gms/internal/firebase_auth/zzke;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzhs;Lcom/google/android/gms/internal/firebase_auth/zzhv;)V

    goto :goto_82

    .line 62
    :cond_34
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzke;)Z

    move-result v4

    goto :goto_83

    .line 63
    :cond_39
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzc()Z

    move-result v4

    goto :goto_83

    :cond_3e
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    .line 67
    :cond_41
    :goto_41
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zza()I

    move-result v8

    if-eq v8, v5, :cond_6f

    .line 69
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzb()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_5a

    .line 71
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzo()I

    move-result v4

    .line 72
    iget-object v6, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zza:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 73
    invoke-virtual {v1, p3, v6, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Lcom/google/android/gms/internal/firebase_auth/zzhs;Lcom/google/android/gms/internal/firebase_auth/zzjn;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_41

    :cond_5a
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_69

    if-eqz v6, :cond_64

    .line 77
    invoke-virtual {v1, p2, v6, p3, v3}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Lcom/google/android/gms/internal/firebase_auth/zzke;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzhs;Lcom/google/android/gms/internal/firebase_auth/zzhv;)V

    goto :goto_41

    .line 79
    :cond_64
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzn()Lcom/google/android/gms/internal/firebase_auth/zzgv;

    move-result-object v7

    goto :goto_41

    .line 81
    :cond_69
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzc()Z

    move-result v8

    if-nez v8, :cond_41

    .line 82
    :cond_6f
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzb()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_89

    if-eqz v7, :cond_82

    if-eqz v6, :cond_7f

    .line 86
    invoke-virtual {v1, v7, v6, p3, v3}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Lcom/google/android/gms/internal/firebase_auth/zzgv;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzhs;Lcom/google/android/gms/internal/firebase_auth/zzhv;)V

    goto :goto_82

    .line 87
    :cond_7f
    invoke-virtual {v0, v2, v4, v7}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase_auth/zzgv;)V
    :try_end_82
    .catchall {:try_start_19 .. :try_end_82} :catchall_8e

    :cond_82
    :goto_82
    const/4 v4, 0x1

    :goto_83
    if-nez v4, :cond_c

    .line 90
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 83
    :cond_89
    :try_start_89
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zze()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object p2

    throw p2
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception p2

    .line 92
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    throw p2

    return-void
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/firebase_auth/zzls;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->zzd()Ljava/util/Iterator;

    move-result-object v0

    .line 29
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase_auth/zzhx;

    .line 32
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->zzc()Lcom/google/android/gms/internal/firebase_auth/zzlt;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase_auth/zzlt;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzlt;

    if-ne v3, v4, :cond_52

    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->zzd()Z

    move-result v3

    if-nez v3, :cond_52

    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->zze()Z

    move-result v3

    if-nez v3, :cond_52

    .line 34
    instance-of v3, v1, Lcom/google/android/gms/internal/firebase_auth/zziu;

    if-eqz v3, :cond_46

    .line 36
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/firebase_auth/zziu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zziu;->zza()Lcom/google/android/gms/internal/firebase_auth/zzis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zziw;->zzc()Lcom/google/android/gms/internal/firebase_auth/zzgv;

    move-result-object v1

    .line 37
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ILjava/lang/Object;)V

    goto :goto_a

    .line 38
    :cond_46
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ILjava/lang/Object;)V

    goto :goto_a

    .line 33
    :cond_52
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_5a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    .line 41
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzc:Z

    if-eqz v0, :cond_29

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method public final zzb(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    .line 100
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zze(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 103
    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzc:Z

    if-eqz v1, :cond_1b

    .line 104
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->zzg()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1b
    return v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzc:Z

    if-eqz v0, :cond_e

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(Lcom/google/android/gms/internal/firebase_auth/zzhu;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public final zzc(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzd(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zzc(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->zzf()Z

    move-result p1

    return p1
.end method
