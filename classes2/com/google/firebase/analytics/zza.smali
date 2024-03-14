.class final Lcom/google/firebase/analytics/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@17.4.1"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzhz;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzac;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Ljava/lang/Object;
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzac;->zzf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzac;->zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/os/Bundle;)V
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzgx;)V
    .registers 3

    .line 13
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzgx;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzha;)V
    .registers 3

    .line 15
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzha;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzac;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 12

    .line 4
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 6
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Z)V
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Z)V

    return-void
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzac;->zzg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzha;)V
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzac;->zzb(Lcom/google/android/gms/measurement/internal/zzha;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .registers 3

    .line 26
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzac;->zzc(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 30
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzac;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzb(Z)V
    .registers 3

    .line 10
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzac;->zzb(Z)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;)I
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzac;->zzd(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzac;->zzd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzac;->zzc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zze()J
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/google/firebase/analytics/zza;->zza:Lcom/google/android/gms/internal/measurement/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzac;->zze()J

    move-result-wide v0

    return-wide v0
.end method
