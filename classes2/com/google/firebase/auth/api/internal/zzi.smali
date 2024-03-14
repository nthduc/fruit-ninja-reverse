.class final Lcom/google/firebase/auth/api/internal/zzi;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzfp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/api/internal/zzfp<",
        "Lcom/google/android/gms/internal/firebase_auth/zzfv;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase_auth/zzfs;

.field private final synthetic zzb:Lcom/google/android/gms/internal/firebase_auth/zzew;

.field private final synthetic zzc:Lcom/google/firebase/auth/api/internal/zzeg;

.field private final synthetic zzd:Lcom/google/android/gms/internal/firebase_auth/zzff;

.field private final synthetic zze:Lcom/google/firebase/auth/api/internal/zzfq;

.field private final synthetic zzf:Lcom/google/firebase/auth/api/internal/zza;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/android/gms/internal/firebase_auth/zzfs;Lcom/google/android/gms/internal/firebase_auth/zzew;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/firebase/auth/api/internal/zzfq;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzi;->zzf:Lcom/google/firebase/auth/api/internal/zza;

    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzi;->zza:Lcom/google/android/gms/internal/firebase_auth/zzfs;

    iput-object p3, p0, Lcom/google/firebase/auth/api/internal/zzi;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzew;

    iput-object p4, p0, Lcom/google/firebase/auth/api/internal/zzi;->zzc:Lcom/google/firebase/auth/api/internal/zzeg;

    iput-object p5, p0, Lcom/google/firebase/auth/api/internal/zzi;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzff;

    iput-object p6, p0, Lcom/google/firebase/auth/api/internal/zzi;->zze:Lcom/google/firebase/auth/api/internal/zzfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .registers 5

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzfv;

    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzi;->zza:Lcom/google/android/gms/internal/firebase_auth/zzfs;

    const-string v1, "EMAIL"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zza(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 6
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzi;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzew;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzew;

    goto :goto_26

    .line 7
    :cond_13
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzi;->zza:Lcom/google/android/gms/internal/firebase_auth/zzfs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzi;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzew;

    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zzi;->zza:Lcom/google/android/gms/internal/firebase_auth/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzew;

    .line 9
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzi;->zza:Lcom/google/android/gms/internal/firebase_auth/zzfs;

    const-string v2, "DISPLAY_NAME"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zza(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 10
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzi;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzew;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzew;

    goto :goto_49

    .line 11
    :cond_36
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzi;->zza:Lcom/google/android/gms/internal/firebase_auth/zzfs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 12
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzi;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzew;

    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zzi;->zza:Lcom/google/android/gms/internal/firebase_auth/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzew;

    .line 13
    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzi;->zza:Lcom/google/android/gms/internal/firebase_auth/zzfs;

    const-string v2, "PHOTO_URL"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zza(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 14
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzi;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzew;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzew;

    goto :goto_6c

    .line 15
    :cond_59
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzi;->zza:Lcom/google/android/gms/internal/firebase_auth/zzfs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zze()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 16
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzi;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzew;

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzi;->zza:Lcom/google/android/gms/internal/firebase_auth/zzfs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzew;

    .line 17
    :cond_6c
    :goto_6c
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzi;->zza:Lcom/google/android/gms/internal/firebase_auth/zzfs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 18
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzi;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzew;

    const-string v1, "redacted"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzew;

    .line 19
    :cond_87
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfv;->zzf()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8e

    goto :goto_93

    .line 20
    :cond_8e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    :goto_93
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzi;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzew;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zza(Ljava/util/List;)Lcom/google/android/gms/internal/firebase_auth/zzew;

    .line 22
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzi;->zzc:Lcom/google/firebase/auth/api/internal/zzeg;

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzi;->zzf:Lcom/google/firebase/auth/api/internal/zza;

    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zzi;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 23
    invoke-static {v1, v2, p1}, Lcom/google/firebase/auth/api/internal/zza;->zza(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfv;)Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzi;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzew;

    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/auth/api/internal/zzeg;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzew;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzi;->zze:Lcom/google/firebase/auth/api/internal/zzfq;

    invoke-interface {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfq;->zza(Ljava/lang/String;)V

    return-void
.end method
