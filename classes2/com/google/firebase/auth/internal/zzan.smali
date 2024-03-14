.class final Lcom/google/firebase/auth/internal/zzan;
.super Landroid/content/BroadcastReceiver;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final zza:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/firebase/auth/FirebaseAuth;

.field private final zzd:Lcom/google/firebase/auth/FirebaseUser;

.field private final synthetic zze:Lcom/google/firebase/auth/internal/zzaf;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzaf;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzan;->zze:Lcom/google/firebase/auth/internal/zzaf;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzan;->zza:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p3, p0, Lcom/google/firebase/auth/internal/zzan;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    iput-object p4, p0, Lcom/google/firebase/auth/internal/zzan;->zzc:Lcom/google/firebase/auth/FirebaseAuth;

    .line 5
    iput-object p5, p0, Lcom/google/firebase/auth/internal/zzan;->zzd:Lcom/google/firebase/auth/FirebaseUser;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 7
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzan;->zza:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-nez p1, :cond_27

    const-string p1, "FederatedAuthReceiver"

    const-string p2, "Failed to unregister BroadcastReceiver because the Activity that launched this flow has been garbage collected; please do not finish() your Activity while performing a FederatedAuthProvider operation."

    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzan;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x445b

    const-string v1, "Activity that started the web operation is no longer alive; see logcat for details"

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 11
    invoke-static {p2}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 13
    invoke-static {}, Lcom/google/firebase/auth/internal/zzaf;->zzb()V

    return-void

    .line 15
    :cond_27
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p1, "com.google.firebase.auth.internal.OPERATION"

    .line 17
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 18
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.firebase.auth.internal.SIGN_IN"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 20
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzan;->zze:Lcom/google/firebase/auth/internal/zzaf;

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzan;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzan;->zzc:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {p1, p2, v0, v1}, Lcom/google/firebase/auth/internal/zzaf;->zza(Lcom/google/firebase/auth/internal/zzaf;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void

    :cond_4c
    const-string v0, "com.google.firebase.auth.internal.LINK"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 22
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzan;->zze:Lcom/google/firebase/auth/internal/zzaf;

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzan;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzan;->zzd:Lcom/google/firebase/auth/FirebaseUser;

    invoke-static {p1, p2, v0, v1}, Lcom/google/firebase/auth/internal/zzaf;->zza(Lcom/google/firebase/auth/internal/zzaf;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseUser;)V

    return-void

    :cond_5e
    const-string v0, "com.google.firebase.auth.internal.REAUTHENTICATE"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 24
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzan;->zze:Lcom/google/firebase/auth/internal/zzaf;

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzan;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzan;->zzd:Lcom/google/firebase/auth/FirebaseUser;

    invoke-static {p1, p2, v0, v1}, Lcom/google/firebase/auth/internal/zzaf;->zzb(Lcom/google/firebase/auth/internal/zzaf;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseUser;)V

    return-void

    .line 25
    :cond_70
    iget-object p2, p0, Lcom/google/firebase/auth/internal/zzan;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "WEB_CONTEXT_CANCELED:Unknown operation received ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzaa;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 28
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    .line 29
    :cond_9e
    invoke-static {p2}, Lcom/google/firebase/auth/internal/zzbc;->zza(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_b5

    .line 30
    invoke-static {p2}, Lcom/google/firebase/auth/internal/zzbc;->zzb(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/google/firebase/auth/internal/zzan;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 32
    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 33
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 34
    invoke-static {}, Lcom/google/firebase/auth/internal/zzaf;->zzb()V

    return-void

    :cond_b5
    const-string p1, "com.google.firebase.auth.internal.EXTRA_CANCELED"

    .line 35
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_cf

    .line 36
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzan;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const-string p2, "WEB_CONTEXT_CANCELED"

    .line 37
    invoke-static {p2}, Lcom/google/firebase/auth/internal/zzaa;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    .line 38
    invoke-static {p2}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 40
    invoke-static {}, Lcom/google/firebase/auth/internal/zzaf;->zzb()V

    :cond_cf
    return-void
.end method
