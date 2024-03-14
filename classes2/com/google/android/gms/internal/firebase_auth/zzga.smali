.class public final Lcom/google/android/gms/internal/firebase_auth/zzga;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/api/internal/zzel<",
        "Lcom/google/android/gms/internal/firebase_auth/zzga;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;",
        ">;"
    }
.end annotation


# instance fields
.field private zza:Z

.field private zzb:Z

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:J

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:Z

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/lang/String;

.field private zzo:Ljava/lang/String;

.field private zzp:Ljava/lang/String;

.field private zzq:Ljava/lang/String;

.field private zzr:Ljava/lang/String;

.field private zzs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_auth/zzfh;",
            ">;"
        }
    .end annotation
.end field

.field private zzt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;",
            ">;"
        }
    .end annotation

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzu()Lcom/google/android/gms/internal/firebase_auth/zzjx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/firebase/auth/api/internal/zzel;
    .registers 5

    .line 21
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;

    if-eqz v0, :cond_d2

    .line 23
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzg()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zza:Z

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzb:Z

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzc:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzd:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzl()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zze:J

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzf:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzg:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzh:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzi:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzj:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzk:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzl:Z

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->e_()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzm:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzn:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzp:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzq:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzr:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzs:Ljava/util/List;

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzt()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase_auth/zzr;

    .line 43
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzs:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_auth/zzfh;->zza(Lcom/google/android/gms/internal/firebase_auth/zzr;)Lcom/google/android/gms/internal/firebase_auth/zzfh;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a7

    .line 45
    :cond_bd
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzs()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzt:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzs;->zzj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzo:Ljava/lang/String;

    return-object p0

    .line 22
    :cond_d2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The passed proto must be an instance of VerifyAssertionResponse."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method public final zzb()Z
    .registers 2

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zza:Z

    return v0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()J
    .registers 3

    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zze:J

    return-wide v0
.end method

.method public final zzi()Z
    .registers 2

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzl:Z

    return v0
.end method

.method public final zzj()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzp:Ljava/lang/String;

    return-object v0
.end method

.method public final zzk()Z
    .registers 2

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zza:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public final zzl()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzr:Ljava/lang/String;

    return-object v0
.end method

.method public final zzm()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_auth/zzfh;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzs:Ljava/util/List;

    return-object v0
.end method

.method public final zzn()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzt:Ljava/lang/String;

    return-object v0
.end method

.method public final zzo()Z
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final zzp()Lcom/google/firebase/auth/zzc;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return-object v0

    .line 17
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzj:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzn:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzm:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzq:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzo:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/firebase/auth/zzc;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/zzc;

    move-result-object v0

    return-object v0
.end method
