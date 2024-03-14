.class public final Lcom/google/firebase/auth/api/internal/zzeg;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final zza:Lcom/google/firebase/auth/api/internal/zzeo;

.field private final zzb:Lcom/google/android/gms/common/logging/Logger;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/api/internal/zzeo;Lcom/google/android/gms/common/logging/Logger;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzeo;

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zza:Lcom/google/firebase/auth/api/internal/zzeo;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/logging/Logger;

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zzb:Lcom/google/android/gms/common/logging/Logger;

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 5

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zza:Lcom/google/firebase/auth/api/internal/zzeo;

    invoke-interface {v0}, Lcom/google/firebase/auth/api/internal/zzeo;->i_()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 28
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RemoteException when sending delete account response."

    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .registers 5

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zza:Lcom/google/firebase/auth/api/internal/zzeo;

    invoke-interface {v0, p1}, Lcom/google/firebase/auth/api/internal/zzeo;->zza(Lcom/google/android/gms/common/api/Status;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 48
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending failure result."

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .registers 5

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zza:Lcom/google/firebase/auth/api/internal/zzeo;

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/auth/api/internal/zzeo;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 53
    iget-object p2, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RemoteException when sending failure result."

    invoke-virtual {p2, v1, p1, v0}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzeh;)V
    .registers 5

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zza:Lcom/google/firebase/auth/api/internal/zzeo;

    invoke-interface {v0, p1}, Lcom/google/firebase/auth/api/internal/zzeo;->zza(Lcom/google/android/gms/internal/firebase_auth/zzeh;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 63
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending failure result with credential"

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzej;)V
    .registers 5

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zza:Lcom/google/firebase/auth/api/internal/zzeo;

    invoke-interface {v0, p1}, Lcom/google/firebase/auth/api/internal/zzeo;->zza(Lcom/google/android/gms/internal/firebase_auth/zzej;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 68
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending failure result for mfa"

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzem;)V
    .registers 5

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zza:Lcom/google/firebase/auth/api/internal/zzeo;

    invoke-interface {v0, p1}, Lcom/google/firebase/auth/api/internal/zzeo;->zza(Lcom/google/android/gms/internal/firebase_auth/zzem;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 18
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending create auth uri response."

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzff;)V
    .registers 5

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zza:Lcom/google/firebase/auth/api/internal/zzeo;

    invoke-interface {v0, p1}, Lcom/google/firebase/auth/api/internal/zzeo;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending token result."

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzew;)V
    .registers 5

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zza:Lcom/google/firebase/auth/api/internal/zzeo;

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/auth/api/internal/zzeo;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzew;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 13
    iget-object p2, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RemoteException when sending get token and account info user response"

    invoke-virtual {p2, v1, p1, v0}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzfm;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/internal/firebase_auth/zzfm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zza:Lcom/google/firebase/auth/api/internal/zzeo;

    invoke-interface {v0, p1}, Lcom/google/firebase/auth/api/internal/zzeo;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfm;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 23
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending password reset response."

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 5

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zza:Lcom/google/firebase/auth/api/internal/zzeo;

    invoke-interface {v0, p1}, Lcom/google/firebase/auth/api/internal/zzeo;->zza(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 38
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending set account info response."

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb()V
    .registers 5

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zza:Lcom/google/firebase/auth/api/internal/zzeo;

    invoke-interface {v0}, Lcom/google/firebase/auth/api/internal/zzeo;->zzb()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 33
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RemoteException when sending email verification response."

    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .registers 5

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zza:Lcom/google/firebase/auth/api/internal/zzeo;

    invoke-interface {v0, p1}, Lcom/google/firebase/auth/api/internal/zzeo;->zzb(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 43
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending send verification code response."

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzc()V
    .registers 5

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zza:Lcom/google/firebase/auth/api/internal/zzeo;

    invoke-interface {v0}, Lcom/google/firebase/auth/api/internal/zzeo;->zzc()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 58
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzeg;->zzb:Lcom/google/android/gms/common/logging/Logger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RemoteException when setting FirebaseUI Version"

    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
