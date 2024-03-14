.class public final Lcom/google/firebase/auth/PhoneAuthOptions;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/firebase/auth/FirebaseAuth;

.field private zzb:Ljava/lang/Long;

.field private zzc:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

.field private zzd:Ljava/util/concurrent/Executor;

.field private zze:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzg:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzh:Lcom/google/firebase/auth/MultiFactorSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzj:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzk:Z


# direct methods
.method private constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;Lcom/google/firebase/auth/MultiFactorSession;Lcom/google/firebase/auth/PhoneMultiFactorInfo;Ljava/lang/String;Z)V
    .registers 12
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/firebase/auth/MultiFactorSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/firebase/auth/PhoneMultiFactorInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    .line 3
    iput-object p5, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zze:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzb:Ljava/lang/Long;

    .line 5
    iput-object p3, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzc:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    .line 6
    iput-object p6, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzf:Landroid/app/Activity;

    .line 7
    iput-object p4, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzd:Ljava/util/concurrent/Executor;

    .line 8
    iput-object p7, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzg:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 9
    iput-object p8, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzh:Lcom/google/firebase/auth/MultiFactorSession;

    .line 10
    iput-object p9, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 11
    iput-object p10, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzj:Ljava/lang/String;

    .line 12
    iput-boolean p11, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzk:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;Lcom/google/firebase/auth/MultiFactorSession;Lcom/google/firebase/auth/PhoneMultiFactorInfo;Ljava/lang/String;ZLcom/google/firebase/auth/zzx;)V
    .registers 25

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v11, p11

    .line 28
    invoke-direct/range {v0 .. v11}, Lcom/google/firebase/auth/PhoneAuthOptions;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;Lcom/google/firebase/auth/MultiFactorSession;Lcom/google/firebase/auth/PhoneMultiFactorInfo;Ljava/lang/String;Z)V

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 26
    new-instance v0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .registers 2
    .param p0    # Lcom/google/firebase/auth/FirebaseAuth;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 27
    new-instance v0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/firebase/auth/FirebaseAuth;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Long;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzb:Ljava/lang/Long;

    return-object v0
.end method

.method public final zzd()Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzc:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    return-object v0
.end method

.method public final zze()Ljava/util/concurrent/Executor;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzd:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final zzf()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzg:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    return-object v0
.end method

.method public final zzg()Lcom/google/firebase/auth/MultiFactorSession;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzh:Lcom/google/firebase/auth/MultiFactorSession;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Z
    .registers 2

    .line 22
    iget-boolean v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzk:Z

    return v0
.end method

.method public final zzj()Landroid/app/Activity;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzf:Landroid/app/Activity;

    return-object v0
.end method

.method public final zzk()Lcom/google/firebase/auth/PhoneMultiFactorInfo;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    return-object v0
.end method

.method public final zzl()Z
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions;->zzh:Lcom/google/firebase/auth/MultiFactorSession;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
