.class final Lcom/google/firebase/auth/api/internal/zzfg;
.super Lcom/google/firebase/auth/api/internal/zzen;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/firebase/auth/api/internal/zzfe;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zzfe;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    invoke-direct {p0}, Lcom/google/firebase/auth/api/internal/zzen;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 92
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    invoke-static {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/api/internal/zzfe;Lcom/google/android/gms/common/api/Status;)V

    .line 93
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iput-object p2, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzq:Lcom/google/firebase/auth/AuthCredential;

    .line 94
    iput-object p3, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzr:Ljava/lang/String;

    .line 95
    iput-object p4, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzs:Ljava/lang/String;

    .line 96
    iget-object p2, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzg:Lcom/google/firebase/auth/internal/zzag;

    if-eqz p2, :cond_18

    .line 97
    iget-object p2, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget-object p2, p2, Lcom/google/firebase/auth/api/internal/zzfe;->zzg:Lcom/google/firebase/auth/internal/zzag;

    invoke-interface {p2, p1}, Lcom/google/firebase/auth/internal/zzag;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 98
    :cond_18
    iget-object p2, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    invoke-virtual {p2, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private final zza(Lcom/google/firebase/auth/api/internal/zzfl;)V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget-object v0, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzj:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzfm;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/auth/api/internal/zzfm;-><init>(Lcom/google/firebase/auth/api/internal/zzfg;Lcom/google/firebase/auth/api/internal/zzfl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final i_()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v0, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v1, v1, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/api/internal/zzfe;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a8

    const-string v1, "MISSING_MFA_PENDING_CREDENTIAL"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 48
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42b9

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_a8

    :cond_17
    const-string v1, "MISSING_MFA_ENROLLMENT_ID"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 50
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42ba

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_a8

    :cond_28
    const-string v1, "INVALID_MFA_PENDING_CREDENTIAL"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 52
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bb

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_a8

    :cond_39
    const-string v1, "MFA_ENROLLMENT_NOT_FOUND"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 54
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bc

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_a8

    :cond_49
    const-string v1, "ADMIN_ONLY_OPERATION"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 56
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bd

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_a8

    :cond_59
    const-string v1, "UNVERIFIED_EMAIL"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 58
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42be

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_a8

    :cond_69
    const-string v1, "SECOND_FACTOR_EXISTS"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 60
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bf

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_a8

    :cond_79
    const-string v1, "SECOND_FACTOR_LIMIT_EXCEEDED"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 62
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_a8

    :cond_89
    const-string v1, "UNSUPPORTED_FIRST_FACTOR"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 64
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c1

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_a8

    :cond_99
    const-string v1, "EMAIL_CHANGE_NEEDS_VERIFICATION"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 66
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c2

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 69
    :cond_a8
    :goto_a8
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v0, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c4

    .line 70
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/api/internal/zzfe;Z)Z

    .line 71
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzw:Z

    .line 72
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzfj;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/auth/api/internal/zzfj;-><init>(Lcom/google/firebase/auth/api/internal/zzfg;Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/api/internal/zzfg;->zza(Lcom/google/firebase/auth/api/internal/zzfl;)V

    return-void

    .line 73
    :cond_c4
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    invoke-static {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/api/internal/zzfe;Lcom/google/android/gms/common/api/Status;)V

    .line 74
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v0, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v1, v1, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/firebase/auth/api/internal/zzfg;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzeh;)V
    .registers 5

    .line 81
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzeh;->zza()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzeh;->zzb()Lcom/google/firebase/auth/zzc;

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzeh;->zzc()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzeh;->zzd()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/firebase/auth/api/internal/zzfg;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzej;)V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iput-object p1, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzt:Lcom/google/android/gms/internal/firebase_auth/zzej;

    const-string p1, "REQUIRES_SECOND_FACTOR_AUTH"

    .line 89
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzaa;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 90
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzem;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v0, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v1, v1, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iput-object p1, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzm:Lcom/google/android/gms/internal/firebase_auth/zzem;

    .line 13
    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/api/internal/zzfe;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzff;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v0, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v0, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/16 v2, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iput-object p1, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzk:Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 4
    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/api/internal/zzfe;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzew;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v0, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v1, v1, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/16 v2, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iput-object p1, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzk:Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 8
    iput-object p2, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzl:Lcom/google/android/gms/internal/firebase_auth/zzew;

    .line 9
    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/api/internal/zzfe;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzfm;)V
    .registers 6
    .param p1    # Lcom/google/android/gms/internal/firebase_auth/zzfm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v0, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v1, v1, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iput-object p1, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzn:Lcom/google/android/gms/internal/firebase_auth/zzfm;

    .line 17
    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/api/internal/zzfe;)V

    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v0, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v2, v2, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/16 v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    invoke-static {v0, v1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/api/internal/zzfe;Z)Z

    .line 35
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iput-boolean v1, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzw:Z

    .line 36
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzfh;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/auth/api/internal/zzfh;-><init>(Lcom/google/firebase/auth/api/internal/zzfg;Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/api/internal/zzfg;->zza(Lcom/google/firebase/auth/api/internal/zzfl;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v0, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v1, v1, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iput-object p1, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzo:Ljava/lang/String;

    .line 27
    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/api/internal/zzfe;)V

    return-void
.end method

.method public final zzb()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v0, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v1, v1, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/api/internal/zzfe;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v0, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v1, v1, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iput-object p1, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzp:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzfi;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/auth/api/internal/zzfi;-><init>(Lcom/google/firebase/auth/api/internal/zzfg;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/api/internal/zzfg;->zza(Lcom/google/firebase/auth/api/internal/zzfl;)V

    return-void
.end method

.method public final zzc()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v0, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v1, v1, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/api/internal/zzfe;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v0, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget v2, v2, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    const/16 v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iput-object p1, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzp:Ljava/lang/String;

    .line 40
    invoke-static {v0, v1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/api/internal/zzfe;Z)Z

    .line 41
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfg;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iput-boolean v1, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzw:Z

    .line 42
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzfk;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/auth/api/internal/zzfk;-><init>(Lcom/google/firebase/auth/api/internal/zzfg;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/api/internal/zzfg;->zza(Lcom/google/firebase/auth/api/internal/zzfl;)V

    return-void
.end method
