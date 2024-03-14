.class public Lcom/google/firebase/auth/internal/FederatedSignInActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# static fields
.field private static zza:J

.field private static final zzc:Lcom/google/firebase/auth/internal/zzao;

.field private static zzd:Landroid/os/Handler;

.field private static zze:Ljava/lang/Runnable;


# instance fields
.field private zzb:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 121
    invoke-static {}, Lcom/google/firebase/auth/internal/zzao;->zza()Lcom/google/firebase/auth/internal/zzao;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzc:Lcom/google/firebase/auth/internal/zzao;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzb:Z

    return-void
.end method

.method static synthetic zza(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 1

    const/4 p0, 0x0

    .line 119
    sput-object p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zze:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final zza()V
    .registers 4

    const-wide/16 v0, 0x0

    .line 90
    sput-wide v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza:J

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzb:Z

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.firebase.auth.internal.EXTRA_CANCELED"

    const/4 v2, 0x1

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "WEB_CONTEXT_CANCELED"

    .line 98
    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzaa;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 100
    invoke-static {p0, v0}, Lcom/google/firebase/auth/internal/zzau;->zza(Landroid/content/Context;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_30

    .line 102
    :cond_2b
    sget-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzc:Lcom/google/firebase/auth/internal/zzao;

    invoke-virtual {v0, p0}, Lcom/google/firebase/auth/internal/zzao;->zza(Landroid/content/Context;)V

    .line 103
    :goto_30
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->finish()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    const-wide/16 v0, 0x0

    .line 105
    sput-wide v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza:J

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzb:Z

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    invoke-static {v0, p1}, Lcom/google/firebase/auth/internal/zzbc;->zza(Landroid/content/Intent;Lcom/google/android/gms/common/api/Status;)V

    const-string v1, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 112
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    invoke-static {v0, p1}, Lcom/google/firebase/auth/internal/zzau;->zza(Landroid/content/Context;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2b

    .line 115
    :cond_26
    sget-object p1, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzc:Lcom/google/firebase/auth/internal/zzao;

    invoke-virtual {p1, p0}, Lcom/google/firebase/auth/internal/zzao;->zza(Landroid/content/Context;)V

    .line 116
    :goto_2b
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->finish()V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/internal/FederatedSignInActivity;)V
    .registers 1

    .line 118
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.firebase.auth.internal.SIGN_IN"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "IdpSignInActivity"

    if-nez v1, :cond_43

    const-string v1, "com.google.firebase.auth.internal.LINK"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    const-string v1, "com.google.firebase.auth.internal.REAUTHENTICATE"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    const-string p1, "Could not do operation - unknown action: "

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3c

    :cond_36
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_3c
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza()V

    return-void

    .line 11
    :cond_43
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 12
    sget-wide v3, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x7530

    cmp-long v7, v3, v5

    if-gez v7, :cond_5b

    const-string p1, "Could not start operation - already in progress"

    .line 13
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_5b
    sput-wide v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza:J

    if-eqz p1, :cond_67

    const-string v0, "com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN"

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzb:Z

    :cond_67
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4

    .line 84
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 85
    sget-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzd:Landroid/os/Handler;

    if-eqz v0, :cond_11

    sget-object v1, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zze:Ljava/lang/Runnable;

    if-eqz v1, :cond_11

    .line 86
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 87
    sput-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zze:Ljava/lang/Runnable;

    .line 88
    :cond_11
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .registers 11

    .line 23
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 24
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.firebase.auth.internal.WEB_SIGN_IN_FAILED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "IdpSignInActivity"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "com.google.firebase.auth.internal.OPERATION"

    if-eqz v1, :cond_31

    const-string v1, "Web sign-in failed, finishing"

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzbc;->zza(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 29
    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzbc;->zzb(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2f

    .line 30
    :cond_2c
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza()V

    :goto_2f
    const/4 v3, 0x1

    goto :goto_9d

    .line 31
    :cond_31
    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9d

    const-string v1, "com.google.firebase.auth.internal.VERIFY_ASSERTION_REQUEST"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 33
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.google.firebase.auth.internal.SIGN_IN"

    .line 34
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5b

    const-string v7, "com.google.firebase.auth.internal.LINK"

    .line 35
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5b

    const-string v7, "com.google.firebase.auth.internal.REAUTHENTICATE"

    .line 36
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 38
    :cond_5b
    sget-object v7, Lcom/google/android/gms/internal/firebase_auth/zzfy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromIntentExtra(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/firebase_auth/zzfy;

    const-string v8, "com.google.firebase.auth.internal.EXTRA_TENANT_ID"

    .line 40
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfy;

    const-wide/16 v8, 0x0

    .line 43
    sput-wide v8, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza:J

    .line 44
    iput-boolean v3, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzb:Z

    .line 45
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 46
    invoke-static {v7, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToIntentExtra(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    .line 48
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 52
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    invoke-static {v1, v7, v6, v0}, Lcom/google/firebase/auth/internal/zzao;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/firebase_auth/zzfy;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    .line 54
    :cond_94
    sget-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzc:Lcom/google/firebase/auth/internal/zzao;

    invoke-virtual {v0, p0}, Lcom/google/firebase/auth/internal/zzao;->zza(Landroid/content/Context;)V

    .line 55
    :goto_99
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->finish()V

    goto :goto_2f

    :cond_9d
    :goto_9d
    if-eqz v3, :cond_a0

    return-void

    .line 63
    :cond_a0
    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzb:Z

    if-nez v0, :cond_df

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.auth.api.gms.ui.START_WEB_SIGN_IN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0xa003

    .line 69
    :try_start_c9
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_cc
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_dc

    :catch_cd
    const-string v0, "Could not launch web sign-in Intent. Google Play service is unavailable"

    .line 73
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x445b

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 75
    invoke-direct {p0, v1}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 76
    :goto_dc
    iput-boolean v4, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzb:Z

    return-void

    .line 79
    :cond_df
    new-instance v0, Lcom/google/firebase/auth/internal/zzap;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/internal/zzap;-><init>(Lcom/google/firebase/auth/internal/FederatedSignInActivity;)V

    sput-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zze:Ljava/lang/Runnable;

    .line 80
    sget-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzd:Landroid/os/Handler;

    if-nez v0, :cond_f1

    .line 81
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzj;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzd:Landroid/os/Handler;

    .line 82
    :cond_f1
    sget-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzd:Landroid/os/Handler;

    sget-object v1, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zze:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 20
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 21
    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzb:Z

    const-string v1, "com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
