.class public final Lcom/google/firebase/auth/api/internal/zza;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# static fields
.field private static final zza:Lcom/google/android/gms/common/logging/Logger;


# instance fields
.field private final zzb:Lcom/google/firebase/auth/api/internal/zzfn;

.field private final zzc:Lcom/google/firebase/auth/api/internal/zzar;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 227
    new-instance v0, Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "FBAuthApiDispatcher"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/logging/Logger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/auth/api/internal/zza;->zza:Lcom/google/android/gms/common/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/auth/api/internal/zzfn;Lcom/google/firebase/auth/api/internal/zzar;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzfn;

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzar;

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zza;->zzc:Lcom/google/firebase/auth/api/internal/zzar;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/common/logging/Logger;
    .registers 1

    .line 221
    sget-object v0, Lcom/google/firebase/auth/api/internal/zza;->zza:Lcom/google/android/gms/common/logging/Logger;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfv;)Lcom/google/android/gms/internal/firebase_auth/zzff;
    .registers 6

    .line 94
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfv;->zzb()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfv;->zzc()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 99
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfv;->zzd()J

    move-result-wide v2

    .line 100
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzf()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, v0, v2, p0}, Lcom/google/android/gms/internal/firebase_auth/zzff;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object p1

    :cond_2c
    return-object p0
.end method

.method static synthetic zza(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfv;)Lcom/google/android/gms/internal/firebase_auth/zzff;
    .registers 3

    .line 225
    invoke-static {p1, p2}, Lcom/google/firebase/auth/api/internal/zza;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfv;)Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/firebase/auth/api/internal/zza;)Lcom/google/firebase/auth/api/internal/zzar;
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/google/firebase/auth/api/internal/zza;->zzc:Lcom/google/firebase/auth/api/internal/zzar;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_auth/zzer;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 5

    .line 75
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzg;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/auth/api/internal/zzg;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzer;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/zzc;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/firebase/auth/api/internal/zzfq;)V
    .registers 21
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/firebase/auth/zzc;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 104
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static/range {p6 .. p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzev;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzev;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    .line 109
    iget-object v11, v0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance v12, Lcom/google/firebase/auth/api/internal/zzh;

    move-object v2, v12

    move-object v3, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p3

    move-object v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object v10, p1

    invoke-direct/range {v2 .. v10}, Lcom/google/firebase/auth/api/internal/zzh;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzfq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/zzc;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/android/gms/internal/firebase_auth/zzff;)V

    invoke-virtual {v11, v1, v12}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzev;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_auth/zzga;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/firebase/auth/api/internal/zzfq;)V
    .registers 15

    .line 196
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzk()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 197
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzp()Lcom/google/firebase/auth/zzc;

    move-result-object p3

    .line 198
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzl()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzb()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 201
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x4274

    invoke-direct {p1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_28

    .line 202
    :cond_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzaa;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 203
    :goto_28
    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zza;->zzc:Lcom/google/firebase/auth/api/internal/zzar;

    invoke-virtual {v2}, Lcom/google/firebase/auth/api/internal/zzar;->zza()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 204
    new-instance v2, Lcom/google/android/gms/internal/firebase_auth/zzeh;

    invoke-direct {v2, p1, p3, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzeh;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/zzc;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/google/firebase/auth/api/internal/zzeg;->zza(Lcom/google/android/gms/internal/firebase_auth/zzeh;)V

    return-void

    .line 205
    :cond_39
    invoke-virtual {p2, p1}, Lcom/google/firebase/auth/api/internal/zzeg;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 207
    :cond_3d
    new-instance v4, Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 208
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzg()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzc()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzh()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Bearer"

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzff;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzf()Ljava/lang/String;

    move-result-object v5

    .line 213
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzga;->zze()Ljava/lang/String;

    move-result-object v6

    .line 214
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 215
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzga;->zzp()Lcom/google/firebase/auth/zzc;

    move-result-object v8

    move-object v3, p0

    move-object v9, p2

    move-object v10, p3

    .line 216
    invoke-direct/range {v3 .. v10}, Lcom/google/firebase/auth/api/internal/zza;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/zzc;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/firebase/auth/api/internal/zzfq;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/android/gms/internal/firebase_auth/zzer;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 3

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/auth/api/internal/zza;->zza(Lcom/google/android/gms/internal/firebase_auth/zzer;Lcom/google/firebase/auth/api/internal/zzeg;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/android/gms/internal/firebase_auth/zzff;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/zzc;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/firebase/auth/api/internal/zzfq;)V
    .registers 16

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    move-object v7, p7

    .line 218
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/auth/api/internal/zza;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/zzc;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/firebase/auth/api/internal/zzfq;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/android/gms/internal/firebase_auth/zzga;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/firebase/auth/api/internal/zzfq;)V
    .registers 4

    .line 219
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/auth/api/internal/zza;->zza(Lcom/google/android/gms/internal/firebase_auth/zzga;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/firebase/auth/api/internal/zzfq;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzew;Lcom/google/android/gms/internal/firebase_auth/zzfs;Lcom/google/firebase/auth/api/internal/zzfq;)V
    .registers 6

    .line 224
    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/auth/api/internal/zza;->zza(Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzew;Lcom/google/android/gms/internal/firebase_auth/zzfs;Lcom/google/firebase/auth/api/internal/zzfq;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfs;Lcom/google/firebase/auth/api/internal/zzfq;)V
    .registers 5

    .line 222
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/auth/api/internal/zza;->zza(Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfs;Lcom/google/firebase/auth/api/internal/zzfq;)V

    return-void
.end method

.method private final zza(Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzew;Lcom/google/android/gms/internal/firebase_auth/zzfs;Lcom/google/firebase/auth/api/internal/zzfq;)V
    .registers 15

    .line 87
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance v8, Lcom/google/firebase/auth/api/internal/zzi;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/auth/api/internal/zzi;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/android/gms/internal/firebase_auth/zzfs;Lcom/google/android/gms/internal/firebase_auth/zzew;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/firebase/auth/api/internal/zzfq;)V

    invoke-virtual {v0, p4, v8}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfs;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method private final zza(Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfs;Lcom/google/firebase/auth/api/internal/zzfq;)V
    .registers 14

    .line 79
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzev;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzev;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance v8, Lcom/google/firebase/auth/api/internal/zzf;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/auth/api/internal/zzf;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzfq;Lcom/google/firebase/auth/api/internal/zzeg;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfs;)V

    invoke-virtual {v0, v1, v8}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzev;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfp;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/api/internal/zzfp<",
            "Lcom/google/android/gms/internal/firebase_auth/zzff;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzb()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 50
    invoke-interface {p2, p1}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzc()Ljava/lang/String;

    move-result-object p1

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzes;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzes;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzaj;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/auth/api/internal/zzaj;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzfp;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzes;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/firebase/auth/api/internal/zza;)Lcom/google/firebase/auth/api/internal/zzfn;
    .registers 1

    .line 226
    iget-object p0, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_auth/zzfa;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 5

    .line 192
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzad;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/auth/api/internal/zzad;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfa;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/firebase_auth/zzfy;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 6

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zza;->zzc:Lcom/google/firebase/auth/api/internal/zzar;

    invoke-virtual {p1}, Lcom/google/firebase/auth/api/internal/zzar;->zza()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzc(Z)Lcom/google/android/gms/internal/firebase_auth/zzfy;

    .line 18
    :cond_12
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    const/4 v0, 0x0

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzx;

    invoke-direct {v1, p0, p3}, Lcom/google/firebase/auth/api/internal/zzx;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/firebase_auth/zzfy;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/firebase_auth/zzgg;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 5

    .line 150
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance v0, Lcom/google/firebase/auth/api/internal/zzq;

    invoke-direct {v0, p0, p3}, Lcom/google/firebase/auth/api/internal/zzq;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, v0}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/firebase_auth/zzgg;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_auth/zzgg;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 6

    .line 160
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance p1, Lcom/google/firebase/auth/api/internal/zzs;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p3, v0, p4}, Lcom/google/firebase/auth/api/internal/zzs;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/android/gms/internal/firebase_auth/zzgg;Landroid/content/Context;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zza;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 6
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzge;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase_auth/zzge;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance p3, Lcom/google/firebase/auth/api/internal/zze;

    invoke-direct {p3, p0, p5}, Lcom/google/firebase/auth/api/internal/zze;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p1, p3}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/firebase_auth/zzge;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzfa;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 3

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/auth/api/internal/zza;->zzb(Lcom/google/android/gms/internal/firebase_auth/zzfa;Lcom/google/firebase/auth/api/internal/zzeg;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzfr;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 5

    .line 146
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzn;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/auth/api/internal/zzn;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfr;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzgd;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 5

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzl;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/auth/api/internal/zzl;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzgd;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 5

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzf()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 71
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zze()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzd;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/auth/api/internal/zzd;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/api/internal/zzeg;)V

    .line 72
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/api/internal/zza;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void

    .line 73
    :cond_19
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzer;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/auth/api/internal/zza;->zza(Lcom/google/android/gms/internal/firebase_auth/zzer;Lcom/google/firebase/auth/api/internal/zzeg;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_auth/zzfy;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 5

    .line 165
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzu;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/firebase/auth/api/internal/zzu;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/android/gms/internal/firebase_auth/zzfy;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/api/internal/zza;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 6
    .param p2    # Lcom/google/firebase/auth/ActionCodeSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 127
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfa;

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzfa;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzgj;)V

    .line 130
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzfa;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfa;

    if-eqz p2, :cond_15

    .line 132
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzfa;->zza(Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/internal/firebase_auth/zzfa;

    .line 133
    :cond_15
    invoke-direct {p0, v0, p3}, Lcom/google/firebase/auth/api/internal/zza;->zzb(Lcom/google/android/gms/internal/firebase_auth/zzfa;Lcom/google/firebase/auth/api/internal/zzeg;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 7
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 116
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {p2}, Lcom/google/firebase/auth/ActionCodeSettings;->zzd()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzgj;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 120
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzfa;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzfa;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzgj;)V

    goto :goto_1d

    .line 121
    :cond_16
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzfa;

    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zza:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzfa;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzgj;)V

    .line 122
    :goto_1d
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzfa;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfa;

    .line 123
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzfa;->zza(Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/internal/firebase_auth/zzfa;

    .line 124
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzfa;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfa;

    .line 125
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance p2, Lcom/google/firebase/auth/api/internal/zzj;

    invoke-direct {p2, p0, p4}, Lcom/google/firebase/auth/api/internal/zzj;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-virtual {p1, v1, p2}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfa;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 5

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzaf;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/firebase/auth/api/internal/zzaf;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/api/internal/zza;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 5

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzes;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzes;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzc;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/auth/api/internal/zzc;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzes;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 5

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzai;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/firebase/auth/api/internal/zzai;-><init>(Lcom/google/firebase/auth/api/internal/zza;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/api/internal/zza;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 7
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfu;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzfu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance p2, Lcom/google/firebase/auth/api/internal/zzb;

    invoke-direct {p2, p0, p4}, Lcom/google/firebase/auth/api/internal/zzb;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfu;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzfu;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzag;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/auth/api/internal/zzag;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfu;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 5

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzah;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/firebase/auth/api/internal/zzah;-><init>(Lcom/google/firebase/auth/api/internal/zza;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/api/internal/zza;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 140
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfn;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzfn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance p2, Lcom/google/firebase/auth/api/internal/zzo;

    invoke-direct {p2, p0, p4}, Lcom/google/firebase/auth/api/internal/zzo;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfn;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 4

    .line 170
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzw;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/auth/api/internal/zzw;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/api/internal/zza;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfs;-><init>()V

    .line 42
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfs;

    .line 43
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzfs;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfs;

    .line 44
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance p2, Lcom/google/firebase/auth/api/internal/zzak;

    invoke-direct {p2, p0, p3}, Lcom/google/firebase/auth/api/internal/zzak;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfs;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 6

    .line 154
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzp;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/google/firebase/auth/api/internal/zzp;-><init>(Lcom/google/firebase/auth/api/internal/zza;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-direct {p0, p3, v0}, Lcom/google/firebase/auth/api/internal/zza;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 4

    .line 181
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzaa;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/auth/api/internal/zzaa;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/api/internal/zza;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 111
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzen;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzen;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance p2, Lcom/google/firebase/auth/api/internal/zzk;

    invoke-direct {p2, p0, p3}, Lcom/google/firebase/auth/api/internal/zzk;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzen;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 4

    .line 185
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzac;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/auth/api/internal/zzac;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/api/internal/zza;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 135
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfn;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzfn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance p2, Lcom/google/firebase/auth/api/internal/zzm;

    invoke-direct {p2, p0, p3}, Lcom/google/firebase/auth/api/internal/zzm;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfn;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zzf(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 189
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zza;->zzb:Lcom/google/firebase/auth/api/internal/zzfn;

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzae;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/auth/api/internal/zzae;-><init>(Lcom/google/firebase/auth/api/internal/zza;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/auth/api/internal/zzfn;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method

.method public final zzf(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V
    .registers 5

    .line 174
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzv;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/firebase/auth/api/internal/zzv;-><init>(Lcom/google/firebase/auth/api/internal/zza;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeg;)V

    invoke-direct {p0, p2, v0}, Lcom/google/firebase/auth/api/internal/zza;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfp;)V

    return-void
.end method
