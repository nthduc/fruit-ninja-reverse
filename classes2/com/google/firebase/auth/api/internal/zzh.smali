.class final Lcom/google/firebase/auth/api/internal/zzh;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzfp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/api/internal/zzfp<",
        "Lcom/google/android/gms/internal/firebase_auth/zzeu;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/api/internal/zzfq;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Ljava/lang/Boolean;

.field private final synthetic zze:Lcom/google/firebase/auth/zzc;

.field private final synthetic zzf:Lcom/google/firebase/auth/api/internal/zzeg;

.field private final synthetic zzg:Lcom/google/android/gms/internal/firebase_auth/zzff;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzfq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/zzc;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/android/gms/internal/firebase_auth/zzff;)V
    .registers 9

    .line 1
    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzh;->zza:Lcom/google/firebase/auth/api/internal/zzfq;

    iput-object p3, p0, Lcom/google/firebase/auth/api/internal/zzh;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/auth/api/internal/zzh;->zzc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/auth/api/internal/zzh;->zzd:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/google/firebase/auth/api/internal/zzh;->zze:Lcom/google/firebase/auth/zzc;

    iput-object p7, p0, Lcom/google/firebase/auth/api/internal/zzh;->zzf:Lcom/google/firebase/auth/api/internal/zzeg;

    iput-object p8, p0, Lcom/google/firebase/auth/api/internal/zzh;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .registers 8

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzeu;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzeu;->zzb()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_92

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_92

    :cond_10
    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzew;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzk()Lcom/google/android/gms/internal/firebase_auth/zzfl;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzfl;->zza()Ljava/util/List;

    move-result-object v1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    if-eqz v1, :cond_66

    .line 11
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_66

    .line 12
    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zzh;->zzb:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5b

    const/4 v2, 0x0

    .line 13
    :goto_34
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_66

    .line 14
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase_auth/zzfj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase_auth/zzfj;->zzd()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/auth/api/internal/zzh;->zzb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase_auth/zzfj;

    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zzh;->zzc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzfj;->zza(Ljava/lang/String;)V

    goto :goto_66

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 18
    :cond_5b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase_auth/zzfj;

    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zzh;->zzc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzfj;->zza(Ljava/lang/String;)V

    .line 19
    :cond_66
    :goto_66
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzh;->zzd:Ljava/lang/Boolean;

    if-eqz v1, :cond_72

    .line 20
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zza(Z)Lcom/google/android/gms/internal/firebase_auth/zzew;

    goto :goto_85

    .line 22
    :cond_72
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzh()J

    move-result-wide v1

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzg()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v5, v1, v3

    if-gez v5, :cond_82

    const/4 v0, 0x1

    .line 24
    :cond_82
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zza(Z)Lcom/google/android/gms/internal/firebase_auth/zzew;

    .line 25
    :goto_85
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzh;->zze:Lcom/google/firebase/auth/zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zza(Lcom/google/firebase/auth/zzc;)Lcom/google/android/gms/internal/firebase_auth/zzew;

    .line 26
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzh;->zzf:Lcom/google/firebase/auth/api/internal/zzeg;

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzh;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzff;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/auth/api/internal/zzeg;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzew;)V

    return-void

    .line 7
    :cond_92
    :goto_92
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzh;->zza:Lcom/google/firebase/auth/api/internal/zzfq;

    const-string v0, "No users."

    invoke-interface {p1, v0}, Lcom/google/firebase/auth/api/internal/zzfq;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzh;->zza:Lcom/google/firebase/auth/api/internal/zzfq;

    invoke-interface {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfq;->zza(Ljava/lang/String;)V

    return-void
.end method
