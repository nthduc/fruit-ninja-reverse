.class public final Lcom/google/android/gms/internal/firebase_auth/zzfs;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzfw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/api/internal/zzfw<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;",
        ">;"
    }
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/firebase_auth/zzfw;

.field private zzg:Lcom/google/android/gms/internal/firebase_auth/zzfw;

.field private zzh:Z

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzh:Z

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzfw;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzfw;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/firebase_auth/zzjn;
    .registers 12

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;->zza()Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzh:Z

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zza(Z)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzfw;

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzfw;->zza()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzfw;->zza()Ljava/util/List;

    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/firebase_auth/zzv;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 43
    :goto_22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7c

    .line 44
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, -0x1

    .line 45
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v7, :sswitch_data_be

    goto :goto_61

    :sswitch_3a
    const-string v7, "PASSWORD"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    const/4 v6, 0x2

    goto :goto_61

    :sswitch_44
    const-string v7, "PHOTO_URL"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    const/4 v6, 0x3

    goto :goto_61

    :sswitch_4e
    const-string v7, "EMAIL"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    const/4 v6, 0x0

    goto :goto_61

    :sswitch_58
    const-string v7, "DISPLAY_NAME"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    const/4 v6, 0x1

    :cond_61
    :goto_61
    if-eqz v6, :cond_75

    if-eq v6, v10, :cond_72

    if-eq v6, v9, :cond_6f

    if-eq v6, v8, :cond_6c

    .line 50
    sget-object v5, Lcom/google/android/gms/internal/firebase_auth/zzv;->zza:Lcom/google/android/gms/internal/firebase_auth/zzv;

    goto :goto_77

    .line 49
    :cond_6c
    sget-object v5, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzv;

    goto :goto_77

    .line 48
    :cond_6f
    sget-object v5, Lcom/google/android/gms/internal/firebase_auth/zzv;->zze:Lcom/google/android/gms/internal/firebase_auth/zzv;

    goto :goto_77

    .line 47
    :cond_72
    sget-object v5, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzv;

    goto :goto_77

    .line 46
    :cond_75
    sget-object v5, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzv;

    .line 51
    :goto_77
    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 54
    :cond_7c
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zza:Ljava/lang/String;

    if-eqz v1, :cond_8b

    .line 56
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;

    .line 57
    :cond_8b
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzb:Ljava/lang/String;

    if-eqz v1, :cond_92

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;

    .line 59
    :cond_92
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzc:Ljava/lang/String;

    if-eqz v1, :cond_99

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;

    .line 61
    :cond_99
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_a0

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;

    .line 63
    :cond_a0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zze:Ljava/lang/String;

    if-eqz v1, :cond_a7

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;

    .line 65
    :cond_a7
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzi:Ljava/lang/String;

    if-eqz v1, :cond_ae

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;

    .line 67
    :cond_ae
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzj:Ljava/lang/String;

    if-eqz v1, :cond_b5

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzn$zzb;

    .line 69
    :cond_b5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzg()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzn;

    return-object v0

    :sswitch_data_be
    .sparse-switch
        -0x13d9e3f8 -> :sswitch_58
        0x3f0537c -> :sswitch_4e
        0x73a065a2 -> :sswitch_44
        0x772faa9b -> :sswitch_3a
    .end sparse-switch
.end method

.method public final zza(Ljava/lang/String;)Z
    .registers 3

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfw;->zza()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfs;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfs;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_e

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzfw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfw;->zza()Ljava/util/List;

    move-result-object p1

    const-string v0, "EMAIL"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 16
    :cond_e
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzb:Ljava/lang/String;

    :goto_10
    return-object p0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfs;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_e

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzfw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfw;->zza()Ljava/util/List;

    move-result-object p1

    const-string v0, "PASSWORD"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 20
    :cond_e
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzc:Ljava/lang/String;

    :goto_10
    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zze(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfs;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_e

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzfw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfw;->zza()Ljava/util/List;

    move-result-object p1

    const-string v0, "DISPLAY_NAME"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 24
    :cond_e
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzd:Ljava/lang/String;

    :goto_10
    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfs;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_e

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzfw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfw;->zza()Ljava/util/List;

    move-result-object p1

    const-string v0, "PHOTO_URL"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 28
    :cond_e
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zze:Ljava/lang/String;

    :goto_10
    return-object p0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfs;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfw;->zza()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfs;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzi:Ljava/lang/String;

    return-object p0
.end method

.method public final zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfs;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzj:Ljava/lang/String;

    return-object p0
.end method
