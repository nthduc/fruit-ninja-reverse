.class public Lcom/google/firebase/auth/FirebaseAuth;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/internal/InternalAuthProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/FirebaseAuth$zzc;,
        Lcom/google/firebase/auth/FirebaseAuth$zza;,
        Lcom/google/firebase/auth/FirebaseAuth$zzb;,
        Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;,
        Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;
    }
.end annotation


# instance fields
.field private zza:Lcom/google/firebase/FirebaseApp;

.field private final zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/IdTokenListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Lcom/google/firebase/auth/api/internal/zzau;

.field private zzf:Lcom/google/firebase/auth/FirebaseUser;

.field private zzg:Lcom/google/firebase/auth/internal/zzo;

.field private final zzh:Ljava/lang/Object;

.field private zzi:Ljava/lang/String;

.field private final zzj:Ljava/lang/Object;

.field private zzk:Ljava/lang/String;

.field private final zzl:Lcom/google/firebase/auth/internal/zzaw;

.field private final zzm:Lcom/google/firebase/auth/internal/zzao;

.field private zzn:Lcom/google/firebase/auth/internal/zzaz;

.field private zzo:Lcom/google/firebase/auth/internal/zzbb;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .registers 6

    .line 6
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzex;

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/api/internal/zzex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/firebase/auth/api/internal/zzex;->zza()Lcom/google/firebase/auth/api/internal/zzeu;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 10
    invoke-static {v1, v0}, Lcom/google/firebase/auth/api/internal/zzet;->zza(Landroid/content/Context;Lcom/google/firebase/auth/api/internal/zzeu;)Lcom/google/firebase/auth/api/internal/zzau;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/google/firebase/auth/internal/zzaw;

    .line 12
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/auth/internal/zzaw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/google/firebase/auth/internal/zzao;->zza()Lcom/google/firebase/auth/internal/zzao;

    move-result-object v2

    .line 14
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/firebase/auth/FirebaseAuth;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/api/internal/zzau;Lcom/google/firebase/auth/internal/zzaw;Lcom/google/firebase/auth/internal/zzao;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/api/internal/zzau;Lcom/google/firebase/auth/internal/zzaw;Lcom/google/firebase/auth/internal/zzao;)V
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzh:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzj:Ljava/lang/Object;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzau;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    .line 21
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzaw;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lcom/google/firebase/auth/internal/zzaw;

    .line 22
    new-instance p1, Lcom/google/firebase/auth/internal/zzo;

    invoke-direct {p1}, Lcom/google/firebase/auth/internal/zzo;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzg:Lcom/google/firebase/auth/internal/zzo;

    .line 23
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzao;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzm:Lcom/google/firebase/auth/internal/zzao;

    .line 24
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzb:Ljava/util/List;

    .line 25
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    .line 26
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzd:Ljava/util/List;

    .line 27
    invoke-static {}, Lcom/google/firebase/auth/internal/zzbb;->zza()Lcom/google/firebase/auth/internal/zzbb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzo:Lcom/google/firebase/auth/internal/zzbb;

    .line 29
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lcom/google/firebase/auth/internal/zzaw;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzaw;->zza()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    .line 30
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    if-eqz p1, :cond_6d

    .line 31
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lcom/google/firebase/auth/internal/zzaw;

    invoke-virtual {p2, p1}, Lcom/google/firebase/auth/internal/zzaw;->zzb(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object p1

    if-eqz p1, :cond_6d

    .line 33
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase_auth/zzff;Z)V

    .line 34
    :cond_6d
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzm:Lcom/google/firebase/auth/internal/zzao;

    invoke-virtual {p1, p0}, Lcom/google/firebase/auth/internal/zzao;->zza(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/auth/FirebaseAuth;
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 2
    const-class v1, Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;
    .registers 2
    .param p0    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    const-class v0, Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method

.method private final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 278
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private final zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
    .registers 4

    .line 257
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzg:Lcom/google/firebase/auth/internal/zzo;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzo;->zzc()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzg:Lcom/google/firebase/auth/internal/zzo;

    .line 258
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzo;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 260
    new-instance p1, Lcom/google/firebase/auth/zzn;

    invoke-direct {p1, p0, p2}, Lcom/google/firebase/auth/zzn;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)V

    goto :goto_1b

    :cond_1a
    move-object p1, p2

    :goto_1b
    return-object p1
.end method

.method static synthetic zza(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .registers 1

    .line 453
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    return-object p0
.end method

.method public static zza(Lcom/google/firebase/auth/PhoneAuthOptions;)V
    .registers 26
    .param p0    # Lcom/google/firebase/auth/PhoneAuthOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzl()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6f

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zza()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzc()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzd()Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object v12

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzg()Lcom/google/firebase/auth/MultiFactorSession;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/firebase/auth/internal/zzy;

    .line 230
    invoke-virtual {v5}, Lcom/google/firebase/auth/internal/zzy;->zzc()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 231
    iget-object v4, v0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzb()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzf()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    move-result-object v0

    if-eqz v0, :cond_3d

    const/4 v10, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v10, 0x0

    .line 234
    :goto_3e
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzi()Z

    move-result v11

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zze()Ljava/util/concurrent/Executor;

    move-result-object v13

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzj()Landroid/app/Activity;

    move-result-object v14

    .line 237
    invoke-virtual/range {v4 .. v14}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/auth/internal/zzy;Ljava/lang/String;Ljava/lang/String;JZZLcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 238
    :cond_4e
    iget-object v4, v0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzk()Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    move-result-object v6

    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzf()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    move-result-object v0

    if-eqz v0, :cond_5e

    const/4 v10, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v10, 0x0

    .line 241
    :goto_5f
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzi()Z

    move-result v11

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zze()Ljava/util/concurrent/Executor;

    move-result-object v13

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzj()Landroid/app/Activity;

    move-result-object v14

    .line 244
    invoke-virtual/range {v4 .. v14}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/auth/internal/zzy;Lcom/google/firebase/auth/PhoneMultiFactorInfo;Ljava/lang/String;JZZLcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 247
    :cond_6f
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zza()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v15

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzb()Ljava/lang/String;

    move-result-object v16

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzc()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzd()Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object v20

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzj()Landroid/app/Activity;

    move-result-object v21

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zze()Ljava/util/concurrent/Executor;

    move-result-object v22

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzf()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    move-result-object v0

    if-eqz v0, :cond_96

    const/16 v23, 0x1

    goto :goto_98

    :cond_96
    const/16 v23, 0x0

    .line 254
    :goto_98
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzh()Ljava/lang/String;

    move-result-object v24

    .line 255
    invoke-virtual/range {v15 .. v24}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;ZLjava/lang/String;)V

    return-void
.end method

.method private final declared-synchronized zza(Lcom/google/firebase/auth/internal/zzaz;)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 88
    :try_start_1
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzn:Lcom/google/firebase/auth/internal/zzaz;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 89
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic zzb(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .registers 1

    .line 454
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzb:Ljava/util/List;

    return-object p0
.end method

.method private final zzb(Ljava/lang/String;)Z
    .registers 3

    .line 451
    invoke-static {p1}, Lcom/google/firebase/auth/ActionCodeUrl;->parseLink(Ljava/lang/String;)Lcom/google/firebase/auth/ActionCodeUrl;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 452
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/auth/ActionCodeUrl;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic zzc(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .registers 1

    .line 455
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzd:Ljava/util/List;

    return-object p0
.end method

.method private final zzc(Lcom/google/firebase/auth/FirebaseUser;)V
    .registers 6
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "FirebaseAuth"

    if-eqz p1, :cond_2c

    .line 118
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Notifying id token listeners about user ( "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_2c
    const-string v1, "Notifying id token listeners about a sign-out event."

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    if-eqz p1, :cond_38

    .line 120
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzg()Ljava/lang/String;

    move-result-object p1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    .line 121
    :goto_39
    new-instance v0, Lcom/google/firebase/internal/InternalTokenResult;

    invoke-direct {v0, p1}, Lcom/google/firebase/internal/InternalTokenResult;-><init>(Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzo:Lcom/google/firebase/auth/internal/zzbb;

    new-instance v1, Lcom/google/firebase/auth/zzi;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/auth/zzi;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/internal/InternalTokenResult;)V

    invoke-virtual {p1, v1}, Lcom/google/firebase/auth/internal/zzbb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final declared-synchronized zzd()Lcom/google/firebase/auth/internal/zzaz;
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzn:Lcom/google/firebase/auth/internal/zzaz;

    if-nez v0, :cond_f

    .line 91
    new-instance v0, Lcom/google/firebase/auth/internal/zzaz;

    .line 92
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 93
    invoke-direct {v0, v1}, Lcom/google/firebase/auth/internal/zzaz;-><init>(Lcom/google/firebase/FirebaseApp;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/internal/zzaz;)V

    .line 94
    :cond_f
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzn:Lcom/google/firebase/auth/internal/zzaz;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic zzd(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/internal/zzo;
    .registers 1

    .line 456
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzg:Lcom/google/firebase/auth/internal/zzo;

    return-object p0
.end method

.method private final zzd(Lcom/google/firebase/auth/FirebaseUser;)V
    .registers 5
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "FirebaseAuth"

    if-eqz p1, :cond_2c

    .line 125
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Notifying auth state listeners about user ( "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " )."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_2c
    const-string p1, "Notifying auth state listeners about a sign-out event."

    .line 126
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_31
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzo:Lcom/google/firebase/auth/internal/zzbb;

    new-instance v0, Lcom/google/firebase/auth/zzl;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/zzl;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/internal/zzbb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zze(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/FirebaseUser;
    .registers 1

    .line 457
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    return-object p0
.end method


# virtual methods
.method public addAuthStateListener(Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;)V
    .registers 4
    .param p1    # Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzo:Lcom/google/firebase/auth/internal/zzbb;

    new-instance v1, Lcom/google/firebase/auth/zzj;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/auth/zzj;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/internal/zzbb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addIdTokenListener(Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;)V
    .registers 4
    .param p1    # Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 99
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzo:Lcom/google/firebase/auth/internal/zzbb;

    new-instance v1, Lcom/google/firebase/auth/zzh;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/auth/zzh;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/internal/zzbb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addIdTokenListener(Lcom/google/firebase/auth/internal/IdTokenListener;)V
    .registers 3
    .param p1    # Lcom/google/firebase/auth/internal/IdTokenListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 102
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzd()Lcom/google/firebase/auth/internal/zzaz;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/internal/zzaz;->zza(I)V

    return-void
.end method

.method public applyActionCode(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 332
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/auth/api/internal/zzau;->zzc(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public checkActionCode(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/ActionCodeResult;",
            ">;"
        }
    .end annotation

    .line 330
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/auth/api/internal/zzau;->zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public confirmPasswordReset(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 336
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 337
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public createUserWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 288
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public fetchSignInMethodsForEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/SignInMethodQueryResult;",
            ">;"
        }
    .end annotation

    .line 291
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getAccessToken(Z)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/GetTokenResult;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getApp()Lcom/google/firebase/FirebaseApp;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method public getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    return-object v0
.end method

.method public getFirebaseAuthSettings()Lcom/google/firebase/auth/FirebaseAuthSettings;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzg:Lcom/google/firebase/auth/internal/zzo;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzh:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 438
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getPendingAuthResult()Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzm:Lcom/google/firebase/auth/internal/zzao;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzao;->zzb()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSignInWithEmailLink(Ljava/lang/String;)Z
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 323
    invoke-static {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zza(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeAuthStateListener(Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;)V
    .registers 3
    .param p1    # Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 115
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeIdTokenListener(Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;)V
    .registers 3
    .param p1    # Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 106
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeIdTokenListener(Lcom/google/firebase/auth/internal/IdTokenListener;)V
    .registers 3
    .param p1    # Lcom/google/firebase/auth/internal/IdTokenListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 108
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzd()Lcom/google/firebase/auth/internal/zzaz;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/internal/zzaz;->zza(I)V

    return-void
.end method

.method public sendPasswordResetEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 307
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->sendPasswordResetEmail(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public sendPasswordResetEmail(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/ActionCodeSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 309
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    if-nez p2, :cond_9

    .line 311
    invoke-static {}, Lcom/google/firebase/auth/ActionCodeSettings;->zza()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object p2

    .line 312
    :cond_9
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 313
    invoke-virtual {p2, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(Ljava/lang/String;)V

    .line 314
    :cond_10
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    invoke-virtual {p2, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(Lcom/google/android/gms/internal/firebase_auth/zzgj;)V

    .line 315
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public sendSignInLinkToEmail(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/ActionCodeSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 316
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-virtual {p2}, Lcom/google/firebase/auth/ActionCodeSettings;->canHandleCodeInApp()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 320
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 321
    invoke-virtual {p2, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(Ljava/lang/String;)V

    .line 322
    :cond_13
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/firebase/auth/api/internal/zzau;->zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 319
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must set canHandleCodeInApp in your ActionCodeSettings to true for Email-Link Sign-in."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFirebaseUIVersion(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setLanguageCode(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 432
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzh:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_6
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    .line 435
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public signInAnonymously()Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 210
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    check-cast v0, Lcom/google/firebase/auth/internal/zzn;

    const/4 v1, 0x0

    .line 211
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/internal/zzn;->zza(Z)V

    .line 212
    new-instance v1, Lcom/google/firebase/auth/internal/zzh;

    invoke-direct {v1, v0}, Lcom/google/firebase/auth/internal/zzh;-><init>(Lcom/google/firebase/auth/internal/zzn;)V

    .line 213
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 214
    :cond_1c
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/internal/zza;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .registers 9
    .param p1    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p1}, Lcom/google/firebase/auth/AuthCredential;->zza()Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    .line 144
    instance-of v0, p1, Lcom/google/firebase/auth/EmailAuthCredential;

    if-eqz v0, :cond_53

    .line 145
    check-cast p1, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 146
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzg()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 147
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 148
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzb()Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzc()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 150
    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/auth/api/internal/zzau;->zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 151
    :cond_2b
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 152
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42b0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 153
    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 154
    :cond_45
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 155
    :cond_53
    instance-of v0, p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    if-eqz v0, :cond_69

    .line 156
    check-cast p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 157
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v3, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 158
    :cond_69
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v3, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public signInWithCustomToken(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 203
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v3, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 205
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/auth/api/internal/zzau;->zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public signInWithEmailLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 208
    invoke-static {p1, p2}, Lcom/google/firebase/auth/EmailAuthProvider;->getCredentialWithLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public signOut()V
    .registers 2

    .line 428
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zza()V

    .line 429
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzn:Lcom/google/firebase/auth/internal/zzaz;

    if-eqz v0, :cond_a

    .line 430
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzaz;->zza()V

    :cond_a
    return-void
.end method

.method public startActivityForSignInWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FederatedAuthProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/auth/FederatedAuthProvider;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 350
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-static {}, Lcom/google/firebase/auth/api/internal/zzee;->zza()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 354
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42a7

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 355
    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 356
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 357
    :cond_1c
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 358
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzm:Lcom/google/firebase/auth/internal/zzao;

    .line 359
    invoke-virtual {v1, p1, v0, p0}, Lcom/google/firebase/auth/internal/zzao;->zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 361
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42a1

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 362
    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 363
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 364
    :cond_39
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 365
    invoke-static {v1, p0}, Lcom/google/firebase/auth/internal/zzau;->zza(Landroid/content/Context;Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 366
    invoke-virtual {p2, p1}, Lcom/google/firebase/auth/FederatedAuthProvider;->zza(Landroid/app/Activity;)V

    .line 367
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public updateCurrentUser(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_76

    .line 265
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzd()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_14
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 266
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 267
    :cond_22
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42b0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 268
    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 269
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 270
    :cond_32
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzc()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zze()Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzb()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 273
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0, p1}, Lcom/google/firebase/auth/internal/zzn;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    .line 274
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zze()Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase_auth/zzff;Z)V

    const/4 p1, 0x0

    .line 275
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 276
    :cond_6c
    new-instance v0, Lcom/google/firebase/auth/FirebaseAuth$zzc;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzc;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 264
    :cond_76
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot update current user with null user!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public useAppLanguage()V
    .registers 3

    .line 446
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzh:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_3
    invoke-static {}, Lcom/google/firebase/auth/api/internal/zzfc;->zza()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    .line 448
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public verifyPasswordResetCode(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 334
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/auth/api/internal/zzau;->zzd(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FederatedAuthProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/auth/FederatedAuthProvider;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 368
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-static {}, Lcom/google/firebase/auth/api/internal/zzee;->zza()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 373
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42a7

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 374
    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 375
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 376
    :cond_1f
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 377
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzm:Lcom/google/firebase/auth/internal/zzao;

    .line 378
    invoke-virtual {v1, p1, v0, p0, p3}, Lcom/google/firebase/auth/internal/zzao;->zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 380
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42a1

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 381
    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 382
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 384
    :cond_3c
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 386
    invoke-static {v1, p0, p3}, Lcom/google/firebase/auth/internal/zzau;->zza(Landroid/content/Context;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 387
    invoke-virtual {p2, p1}, Lcom/google/firebase/auth/FederatedAuthProvider;->zzb(Landroid/app/Activity;)V

    .line 388
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1    # Lcom/google/firebase/auth/ActionCodeSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 324
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    if-eqz v0, :cond_12

    if-nez p1, :cond_d

    .line 327
    invoke-static {}, Lcom/google/firebase/auth/ActionCodeSettings;->zza()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object p1

    .line 328
    :cond_d
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(Ljava/lang/String;)V

    .line 329
    :cond_12
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 277
    new-instance v0, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .registers 14
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->zza()Lcom/google/firebase/auth/AuthCredential;

    move-result-object v3

    .line 162
    instance-of p2, v3, Lcom/google/firebase/auth/EmailAuthCredential;

    if-eqz p2, :cond_5f

    .line 163
    check-cast v3, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 165
    invoke-virtual {v3}, Lcom/google/firebase/auth/AuthCredential;->getSignInMethod()Ljava/lang/String;

    move-result-object p2

    const-string v0, "password"

    .line 166
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 167
    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 168
    invoke-virtual {v3}, Lcom/google/firebase/auth/EmailAuthCredential;->zzb()Ljava/lang/String;

    move-result-object v7

    .line 169
    invoke-virtual {v3}, Lcom/google/firebase/auth/EmailAuthCredential;->zzc()Ljava/lang/String;

    move-result-object v8

    .line 170
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzd()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v10, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v6, p1

    .line 171
    invoke-virtual/range {v4 .. v10}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 172
    :cond_37
    invoke-virtual {v3}, Lcom/google/firebase/auth/EmailAuthCredential;->zzd()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_51

    .line 173
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42b0

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 174
    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 175
    :cond_51
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v1, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v1, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {p2, v0, p1, v3, v1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 176
    :cond_5f
    instance-of p2, v3, Lcom/google/firebase/auth/PhoneAuthCredential;

    if-eqz p2, :cond_77

    .line 177
    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    move-object v7, v3

    check-cast v7, Lcom/google/firebase/auth/PhoneAuthCredential;

    iget-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v9, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v9, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 178
    :cond_77
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 179
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzd()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v2, p1

    .line 180
    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/MultiFactorAssertion;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 11
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/MultiFactorAssertion;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 421
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    instance-of v0, p2, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;

    if-eqz v0, :cond_1d

    .line 424
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    move-object v3, p2

    check-cast v3, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v4, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/PhoneMultiFactorAssertion;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 425
    :cond_1d
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x445b

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 426
    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 427
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/PhoneAuthCredential;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 299
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 302
    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->zza()Lcom/google/firebase/auth/AuthCredential;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/auth/PhoneAuthCredential;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 303
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/UserProfileChangeRequest;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/UserProfileChangeRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/UserProfileChangeRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 293
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 285
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/firebase/auth/api/internal/zzau;->zzd(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/GetTokenResult;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_12

    .line 131
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4457

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 132
    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 133
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 134
    :cond_12
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zze()Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzb()Z

    move-result v1

    if-eqz v1, :cond_2b

    if-nez p2, :cond_2b

    .line 137
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzar;->zza(Ljava/lang/String;)Lcom/google/firebase/auth/GetTokenResult;

    move-result-object p1

    .line 138
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 139
    :cond_2b
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 140
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzc()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/auth/zzk;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/zzk;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 141
    invoke-virtual {p2, v1, p1, v0, v2}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/MultiFactorAssertion;Lcom/google/firebase/auth/internal/zzy;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .registers 10
    .param p3    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/MultiFactorAssertion;",
            "Lcom/google/firebase/auth/internal/zzy;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 345
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;

    .line 348
    invoke-virtual {p2}, Lcom/google/firebase/auth/internal/zzy;->zzb()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v2, p3

    .line 349
    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneMultiFactorAssertion;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p3    # Lcom/google/firebase/auth/ActionCodeSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 414
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    if-nez p3, :cond_c

    .line 417
    invoke-static {}, Lcom/google/firebase/auth/ActionCodeSettings;->zza()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object p3

    .line 418
    :cond_c
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 419
    invoke-virtual {p3, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(Ljava/lang/String;)V

    .line 420
    :cond_13
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza()V
    .registers 6

    .line 78
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 79
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lcom/google/firebase/auth/internal/zzaw;

    .line 80
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 81
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/firebase/auth/internal/zzaw;->zza(Ljava/lang/String;)V

    .line 82
    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    .line 83
    :cond_1f
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lcom/google/firebase/auth/internal/zzaw;

    const-string v2, "com.google.firebase.auth.FIREBASE_USER"

    .line 84
    invoke-virtual {v0, v2}, Lcom/google/firebase/auth/internal/zzaw;->zza(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lcom/google/firebase/auth/FirebaseUser;)V

    .line 86
    invoke-direct {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zzd(Lcom/google/firebase/auth/FirebaseUser;)V

    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase_auth/zzff;Z)V
    .registers 5
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/firebase_auth/zzff;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase_auth/zzff;ZZ)V

    return-void
.end method

.method final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase_auth/zzff;ZZ)V
    .registers 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v3}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-nez v0, :cond_24

    if-eqz p4, :cond_24

    return-void

    .line 45
    :cond_24
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    if-nez p4, :cond_2a

    const/4 p4, 0x1

    goto :goto_46

    .line 48
    :cond_2a
    invoke-virtual {p4}, Lcom/google/firebase/auth/FirebaseUser;->zze()Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object p4

    .line 49
    invoke-virtual {p4}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd()Ljava/lang/String;

    move-result-object p4

    .line 50
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    xor-int/2addr p4, v2

    if-eqz v0, :cond_41

    if-nez p4, :cond_41

    const/4 p4, 0x0

    goto :goto_42

    :cond_41
    const/4 p4, 0x1

    :goto_42
    if-nez v0, :cond_45

    goto :goto_46

    :cond_45
    const/4 v2, 0x0

    .line 57
    :goto_46
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    if-nez v0, :cond_50

    .line 59
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    goto :goto_6f

    .line 60
    :cond_50
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getProviderData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseUser;->zza(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;

    .line 61
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result v0

    if-nez v0, :cond_62

    .line 62
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->zzb()Lcom/google/firebase/auth/FirebaseUser;

    .line 63
    :cond_62
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getMultiFactor()Lcom/google/firebase/auth/MultiFactor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/MultiFactor;->getEnrolledFactors()Ljava/util/List;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseUser;->zzb(Ljava/util/List;)V

    :goto_6f
    if-eqz p3, :cond_78

    .line 66
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lcom/google/firebase/auth/internal/zzaw;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/internal/zzaw;->zza(Lcom/google/firebase/auth/FirebaseUser;)V

    :cond_78
    if-eqz p4, :cond_86

    .line 68
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    if-eqz p4, :cond_81

    .line 69
    invoke-virtual {p4, p2}, Lcom/google/firebase/auth/FirebaseUser;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;)V

    .line 70
    :cond_81
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    invoke-direct {p0, p4}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lcom/google/firebase/auth/FirebaseUser;)V

    :cond_86
    if-eqz v2, :cond_8d

    .line 72
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    invoke-direct {p0, p4}, Lcom/google/firebase/auth/FirebaseAuth;->zzd(Lcom/google/firebase/auth/FirebaseUser;)V

    :cond_8d
    if-eqz p3, :cond_94

    .line 74
    iget-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lcom/google/firebase/auth/internal/zzaw;

    invoke-virtual {p3, p1, p2}, Lcom/google/firebase/auth/internal/zzaw;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase_auth/zzff;)V

    .line 76
    :cond_94
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzd()Lcom/google/firebase/auth/internal/zzaz;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->zze()Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/internal/zzaz;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 439
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzj:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_6
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    .line 442
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final zza(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;ZLjava/lang/String;)V
    .registers 22
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 215
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p2

    move-object/from16 v4, p4

    invoke-virtual {v1, p2, p3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v1, 0x0

    cmp-long v3, v4, v1

    if-ltz v3, :cond_39

    const-wide/16 v1, 0x78

    cmp-long v3, v4, v1

    if-gtz v3, :cond_39

    .line 219
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzfr;

    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    move-object v2, v1

    move-object v3, p1

    move/from16 v6, p8

    move-object/from16 v9, p9

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/firebase_auth/zzfr;-><init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    move-object/from16 v3, p5

    .line 220
    invoke-direct {p0, p1, v3}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object v9

    .line 221
    iget-object v6, v0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    move-object v8, v1

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v6 .. v11}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase_auth/zzfr;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)V

    return-void

    .line 218
    :cond_39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "We only support 0-120 seconds for sms-auto-retrieval timeout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zzb(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FederatedAuthProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/auth/FederatedAuthProvider;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-static {}, Lcom/google/firebase/auth/api/internal/zzee;->zza()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 394
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42a7

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 395
    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 396
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 397
    :cond_1f
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 398
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzm:Lcom/google/firebase/auth/internal/zzao;

    .line 399
    invoke-virtual {v1, p1, v0, p0, p3}, Lcom/google/firebase/auth/internal/zzao;->zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 401
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42a1

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 402
    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 403
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 405
    :cond_3c
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 407
    invoke-static {v1, p0, p3}, Lcom/google/firebase/auth/internal/zzau;->zza(Landroid/content/Context;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 408
    invoke-virtual {p2, p1}, Lcom/google/firebase/auth/FederatedAuthProvider;->zzc(Landroid/app/Activity;)V

    .line 409
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 412
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    new-instance v1, Lcom/google/firebase/auth/zzo;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/auth/zzo;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzad;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .registers 14
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->zza()Lcom/google/firebase/auth/AuthCredential;

    move-result-object v3

    .line 184
    instance-of p2, v3, Lcom/google/firebase/auth/EmailAuthCredential;

    if-eqz p2, :cond_5f

    .line 185
    check-cast v3, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 187
    invoke-virtual {v3}, Lcom/google/firebase/auth/AuthCredential;->getSignInMethod()Ljava/lang/String;

    move-result-object p2

    const-string v0, "password"

    .line 188
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 189
    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 190
    invoke-virtual {v3}, Lcom/google/firebase/auth/EmailAuthCredential;->zzb()Ljava/lang/String;

    move-result-object v7

    .line 191
    invoke-virtual {v3}, Lcom/google/firebase/auth/EmailAuthCredential;->zzc()Ljava/lang/String;

    move-result-object v8

    .line 192
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzd()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v10, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v6, p1

    .line 193
    invoke-virtual/range {v4 .. v10}, Lcom/google/firebase/auth/api/internal/zzau;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 194
    :cond_37
    invoke-virtual {v3}, Lcom/google/firebase/auth/EmailAuthCredential;->zzd()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_51

    .line 195
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42b0

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 196
    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 197
    :cond_51
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v1, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v1, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {p2, v0, p1, v3, v1}, Lcom/google/firebase/auth/api/internal/zzau;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 198
    :cond_5f
    instance-of p2, v3, Lcom/google/firebase/auth/PhoneAuthCredential;

    if-eqz p2, :cond_77

    .line 199
    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    move-object v7, v3

    check-cast v7, Lcom/google/firebase/auth/PhoneAuthCredential;

    iget-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v9, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v9, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/google/firebase/auth/api/internal/zzau;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 200
    :cond_77
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 201
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzd()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v2, p1

    .line 202
    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/auth/api/internal/zzau;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 296
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/firebase/auth/api/internal/zzau;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Lcom/google/firebase/FirebaseApp;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method public final zzc(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 280
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 283
    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->zza()Lcom/google/firebase/auth/AuthCredential;

    move-result-object p2

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 284
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 304
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/firebase/auth/api/internal/zzau;->zzc(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzj:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 445
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzd(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 339
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$zza;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 342
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/firebase/auth/api/internal/zzau;->zze(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/firebase/auth/zzm;

    invoke-direct {p2, p0}, Lcom/google/firebase/auth/zzm;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 343
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
