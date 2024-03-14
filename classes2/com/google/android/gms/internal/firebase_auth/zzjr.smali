.class final Lcom/google/android/gms/internal/firebase_auth/zzjr;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzkd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase_auth/zzkd<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/firebase_auth/zzjn;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:Z

.field private final zzk:Z

.field private final zzl:[I

.field private final zzm:I

.field private final zzn:I

.field private final zzo:Lcom/google/android/gms/internal/firebase_auth/zzjw;

.field private final zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

.field private final zzq:Lcom/google/android/gms/internal/firebase_auth/zzkz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzhu<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 3240
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza:[I

    .line 3241
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzc()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/firebase_auth/zzjn;ZZ[IIILcom/google/android/gms/internal/firebase_auth/zzjw;Lcom/google/android/gms/internal/firebase_auth/zzix;Lcom/google/android/gms/internal/firebase_auth/zzkz;Lcom/google/android/gms/internal/firebase_auth/zzhu;Lcom/google/android/gms/internal/firebase_auth/zzjk;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/firebase_auth/zzjn;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/firebase_auth/zzjw;",
            "Lcom/google/android/gms/internal/firebase_auth/zzix;",
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "**>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhu<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzjk;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzf:I

    .line 6
    instance-of p1, p5, Lcom/google/android/gms/internal/firebase_auth/zzif;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzi:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzj:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_1c

    .line 8
    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 p2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p2, 0x0

    :goto_1d
    iput-boolean p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzh:Z

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzl:[I

    .line 11
    iput p9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzm:I

    .line 12
    iput p10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzn:I

    .line 13
    iput-object p11, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzo:Lcom/google/android/gms/internal/firebase_auth/zzjw;

    .line 14
    iput-object p12, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    .line 15
    iput-object p13, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    .line 16
    iput-object p14, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 18
    iput-object p15, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1216
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1217
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzjl;Lcom/google/android/gms/internal/firebase_auth/zzjw;Lcom/google/android/gms/internal/firebase_auth/zzix;Lcom/google/android/gms/internal/firebase_auth/zzkz;Lcom/google/android/gms/internal/firebase_auth/zzhu;Lcom/google/android/gms/internal/firebase_auth/zzjk;)Lcom/google/android/gms/internal/firebase_auth/zzjr;
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzjl;",
            "Lcom/google/android/gms/internal/firebase_auth/zzjw;",
            "Lcom/google/android/gms/internal/firebase_auth/zzix;",
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "**>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhu<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzjk;",
            ")",
            "Lcom/google/android/gms/internal/firebase_auth/zzjr<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 20
    instance-of v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzkb;

    if-eqz v1, :cond_40d

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzkb;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzkb;->zza()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zzi:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_14

    const/4 v11, 0x1

    goto :goto_15

    :cond_14
    const/4 v11, 0x0

    .line 23
    :goto_15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzkb;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_31

    const/4 v5, 0x1

    :goto_27
    add-int/lit8 v7, v5, 0x1

    .line 30
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_32

    move v5, v7

    goto :goto_27

    :cond_31
    const/4 v7, 0x1

    :cond_32
    add-int/lit8 v5, v7, 0x1

    .line 33
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_51

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_3e
    add-int/lit8 v10, v5, 0x1

    .line 37
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_4e

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_3e

    :cond_4e
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    goto :goto_52

    :cond_51
    move v10, v5

    :goto_52
    if-nez v7, :cond_61

    .line 49
    sget-object v5, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza:[I

    move-object v15, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto/16 :goto_18a

    :cond_61
    add-int/lit8 v5, v10, 0x1

    .line 51
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_80

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_6d
    add-int/lit8 v10, v5, 0x1

    .line 55
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_7d

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_6d

    :cond_7d
    shl-int/2addr v5, v9

    or-int/2addr v5, v7

    goto :goto_82

    :cond_80
    move v10, v5

    move v5, v7

    :goto_82
    add-int/lit8 v7, v10, 0x1

    .line 60
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_a1

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_8e
    add-int/lit8 v12, v7, 0x1

    .line 64
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_9e

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v10

    or-int/2addr v9, v7

    add-int/lit8 v10, v10, 0xd

    move v7, v12

    goto :goto_8e

    :cond_9e
    shl-int/2addr v7, v10

    or-int/2addr v9, v7

    goto :goto_a2

    :cond_a1
    move v12, v7

    :goto_a2
    add-int/lit8 v7, v12, 0x1

    .line 69
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_c2

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_ae
    add-int/lit8 v13, v7, 0x1

    .line 73
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_be

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v12

    or-int/2addr v10, v7

    add-int/lit8 v12, v12, 0xd

    move v7, v13

    goto :goto_ae

    :cond_be
    shl-int/2addr v7, v12

    or-int/2addr v7, v10

    move v10, v7

    goto :goto_c3

    :cond_c2
    move v13, v7

    :goto_c3
    add-int/lit8 v7, v13, 0x1

    .line 78
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_e3

    and-int/lit16 v12, v12, 0x1fff

    const/16 v13, 0xd

    :goto_cf
    add-int/lit8 v14, v7, 0x1

    .line 82
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_df

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v13

    or-int/2addr v12, v7

    add-int/lit8 v13, v13, 0xd

    move v7, v14

    goto :goto_cf

    :cond_df
    shl-int/2addr v7, v13

    or-int/2addr v7, v12

    move v12, v7

    goto :goto_e4

    :cond_e3
    move v14, v7

    :goto_e4
    add-int/lit8 v7, v14, 0x1

    .line 87
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_104

    and-int/lit16 v13, v13, 0x1fff

    const/16 v14, 0xd

    :goto_f0
    add-int/lit8 v15, v7, 0x1

    .line 91
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_100

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v14

    or-int/2addr v13, v7

    add-int/lit8 v14, v14, 0xd

    move v7, v15

    goto :goto_f0

    :cond_100
    shl-int/2addr v7, v14

    or-int/2addr v7, v13

    move v13, v7

    goto :goto_105

    :cond_104
    move v15, v7

    :goto_105
    add-int/lit8 v7, v15, 0x1

    .line 96
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_127

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_111
    add-int/lit8 v16, v7, 0x1

    .line 100
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_122

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v15

    or-int/2addr v14, v7

    add-int/lit8 v15, v15, 0xd

    move/from16 v7, v16

    goto :goto_111

    :cond_122
    shl-int/2addr v7, v15

    or-int/2addr v7, v14

    move v14, v7

    move/from16 v7, v16

    :cond_127
    add-int/lit8 v15, v7, 0x1

    .line 105
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_14a

    and-int/lit16 v7, v7, 0x1fff

    const/16 v16, 0xd

    :goto_133
    add-int/lit8 v17, v15, 0x1

    .line 109
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_145

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v7, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_133

    :cond_145
    shl-int v15, v15, v16

    or-int/2addr v7, v15

    move/from16 v15, v17

    :cond_14a
    add-int/lit8 v16, v15, 0x1

    .line 114
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_175

    and-int/lit16 v15, v15, 0x1fff

    const/16 v17, 0xd

    move/from16 v32, v16

    move/from16 v16, v15

    move/from16 v15, v32

    :goto_15c
    add-int/lit8 v18, v15, 0x1

    .line 118
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_16f

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v17

    or-int v16, v16, v15

    add-int/lit8 v17, v17, 0xd

    move/from16 v15, v18

    goto :goto_15c

    :cond_16f
    shl-int v15, v15, v17

    or-int v15, v16, v15

    move/from16 v16, v18

    :cond_175
    add-int v17, v15, v14

    add-int v7, v17, v7

    .line 123
    new-array v7, v7, [I

    shl-int/lit8 v17, v5, 0x1

    add-int v9, v17, v9

    move/from16 v32, v16

    move/from16 v16, v5

    move v5, v14

    move v14, v15

    move-object v15, v7

    move v7, v9

    move v9, v10

    move/from16 v10, v32

    .line 125
    :goto_18a
    sget-object v3, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb:Lsun/misc/Unsafe;

    .line 126
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzkb;->zze()[Ljava/lang/Object;

    move-result-object v17

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzkb;->zzc()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    mul-int/lit8 v6, v13, 0x3

    .line 129
    new-array v6, v6, [I

    shl-int/2addr v13, v4

    .line 130
    new-array v13, v13, [Ljava/lang/Object;

    add-int v19, v14, v5

    move/from16 v21, v14

    move/from16 v22, v19

    const/4 v5, 0x0

    const/16 v20, 0x0

    :goto_1a8
    if-ge v10, v2, :cond_3ea

    add-int/lit8 v23, v10, 0x1

    .line 135
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v4, 0xd800

    if-lt v10, v4, :cond_1dc

    and-int/lit16 v10, v10, 0x1fff

    const/16 v25, 0xd

    move/from16 v32, v23

    move/from16 v23, v10

    move/from16 v10, v32

    :goto_1bf
    add-int/lit8 v26, v10, 0x1

    .line 139
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v4, :cond_1d5

    and-int/lit16 v4, v10, 0x1fff

    shl-int v4, v4, v25

    or-int v23, v23, v4

    add-int/lit8 v25, v25, 0xd

    move/from16 v10, v26

    const v4, 0xd800

    goto :goto_1bf

    :cond_1d5
    shl-int v4, v10, v25

    or-int v10, v23, v4

    move/from16 v4, v26

    goto :goto_1de

    :cond_1dc
    move/from16 v4, v23

    :goto_1de
    add-int/lit8 v23, v4, 0x1

    .line 144
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v25, v2

    const v2, 0xd800

    if-lt v4, v2, :cond_212

    and-int/lit16 v4, v4, 0x1fff

    const/16 v26, 0xd

    move/from16 v32, v23

    move/from16 v23, v4

    move/from16 v4, v32

    :goto_1f5
    add-int/lit8 v27, v4, 0x1

    .line 148
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v2, :cond_20b

    and-int/lit16 v2, v4, 0x1fff

    shl-int v2, v2, v26

    or-int v23, v23, v2

    add-int/lit8 v26, v26, 0xd

    move/from16 v4, v27

    const v2, 0xd800

    goto :goto_1f5

    :cond_20b
    shl-int v2, v4, v26

    or-int v4, v23, v2

    move/from16 v2, v27

    goto :goto_214

    :cond_212
    move/from16 v2, v23

    :goto_214
    move/from16 v23, v14

    and-int/lit16 v14, v4, 0xff

    move/from16 v26, v12

    and-int/lit16 v12, v4, 0x400

    if-eqz v12, :cond_223

    add-int/lit8 v12, v5, 0x1

    .line 155
    aput v20, v15, v5

    move v5, v12

    :cond_223
    const/16 v12, 0x33

    move/from16 v29, v5

    if-lt v14, v12, :cond_2bc

    add-int/lit8 v12, v2, 0x1

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v5, 0xd800

    if-lt v2, v5, :cond_252

    and-int/lit16 v2, v2, 0x1fff

    const/16 v30, 0xd

    :goto_238
    add-int/lit8 v31, v12, 0x1

    .line 161
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_24d

    and-int/lit16 v5, v12, 0x1fff

    shl-int v5, v5, v30

    or-int/2addr v2, v5

    add-int/lit8 v30, v30, 0xd

    move/from16 v12, v31

    const v5, 0xd800

    goto :goto_238

    :cond_24d
    shl-int v5, v12, v30

    or-int/2addr v2, v5

    move/from16 v12, v31

    :cond_252
    add-int/lit8 v5, v14, -0x33

    move/from16 v30, v12

    const/16 v12, 0x9

    if-eq v5, v12, :cond_273

    const/16 v12, 0x11

    if-ne v5, v12, :cond_25f

    goto :goto_273

    :cond_25f
    const/16 v12, 0xc

    if-ne v5, v12, :cond_271

    if-nez v11, :cond_271

    .line 171
    div-int/lit8 v5, v20, 0x3

    const/4 v12, 0x1

    shl-int/2addr v5, v12

    add-int/2addr v5, v12

    add-int/lit8 v12, v7, 0x1

    aget-object v7, v17, v7

    aput-object v7, v13, v5

    move v7, v12

    :cond_271
    const/4 v12, 0x1

    goto :goto_280

    .line 168
    :cond_273
    :goto_273
    div-int/lit8 v5, v20, 0x3

    const/4 v12, 0x1

    shl-int/2addr v5, v12

    add-int/2addr v5, v12

    add-int/lit8 v24, v7, 0x1

    aget-object v7, v17, v7

    aput-object v7, v13, v5

    move/from16 v7, v24

    :goto_280
    shl-int/2addr v2, v12

    .line 173
    aget-object v5, v17, v2

    .line 174
    instance-of v12, v5, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_28a

    .line 175
    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_292

    .line 176
    :cond_28a
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 177
    aput-object v5, v17, v2

    :goto_292
    move-object v12, v6

    .line 178
    invoke-virtual {v3, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v6, v5

    add-int/lit8 v2, v2, 0x1

    .line 180
    aget-object v5, v17, v2

    move/from16 v27, v6

    .line 181
    instance-of v6, v5, Ljava/lang/reflect/Field;

    if-eqz v6, :cond_2a5

    .line 182
    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_2ad

    .line 183
    :cond_2a5
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 184
    aput-object v5, v17, v2

    .line 185
    :goto_2ad
    invoke-virtual {v3, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v2, v5

    move v5, v2

    move-object/from16 v18, v8

    move/from16 v6, v27

    move/from16 v28, v30

    const/4 v2, 0x0

    goto/16 :goto_3ae

    :cond_2bc
    move-object v12, v6

    add-int/lit8 v5, v7, 0x1

    .line 188
    aget-object v6, v17, v7

    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/16 v7, 0x9

    if-eq v14, v7, :cond_32e

    const/16 v7, 0x11

    if-ne v14, v7, :cond_2d0

    goto :goto_32e

    :cond_2d0
    const/16 v7, 0x1b

    if-eq v14, v7, :cond_31f

    const/16 v7, 0x31

    if-ne v14, v7, :cond_2d9

    goto :goto_31f

    :cond_2d9
    const/16 v7, 0xc

    if-eq v14, v7, :cond_30b

    const/16 v7, 0x1e

    if-eq v14, v7, :cond_30b

    const/16 v7, 0x2c

    if-ne v14, v7, :cond_2e6

    goto :goto_30b

    :cond_2e6
    const/16 v7, 0x32

    if-ne v14, v7, :cond_33c

    add-int/lit8 v7, v21, 0x1

    .line 197
    aput v20, v15, v21

    .line 198
    div-int/lit8 v21, v20, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v21, v21, 0x1

    add-int/lit8 v27, v5, 0x1

    aget-object v5, v17, v5

    aput-object v5, v13, v21

    and-int/lit16 v5, v4, 0x800

    if-eqz v5, :cond_308

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v5, v27, 0x1

    .line 200
    aget-object v27, v17, v27

    aput-object v27, v13, v21

    move/from16 v27, v5

    :cond_308
    move/from16 v21, v7

    goto :goto_33e

    :cond_30b
    :goto_30b
    if-nez v11, :cond_31c

    .line 195
    div-int/lit8 v7, v20, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v27, v5, 0x1

    aget-object v5, v17, v5

    aput-object v5, v13, v7

    goto :goto_33e

    :cond_31c
    const/16 v24, 0x1

    goto :goto_33c

    :cond_31f
    :goto_31f
    const/16 v24, 0x1

    .line 192
    div-int/lit8 v7, v20, 0x3

    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v27, v5, 0x1

    aget-object v5, v17, v5

    aput-object v5, v13, v7

    goto :goto_33e

    :cond_32e
    :goto_32e
    const/16 v24, 0x1

    .line 190
    div-int/lit8 v7, v20, 0x3

    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v27

    aput-object v27, v13, v7

    :cond_33c
    :goto_33c
    move/from16 v27, v5

    .line 201
    :goto_33e
    invoke-virtual {v3, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v6, v5

    and-int/lit16 v5, v4, 0x1000

    const/16 v7, 0x1000

    if-ne v5, v7, :cond_396

    const/16 v5, 0x11

    if-gt v14, v5, :cond_396

    add-int/lit8 v5, v2, 0x1

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v7, 0xd800

    if-lt v2, v7, :cond_372

    and-int/lit16 v2, v2, 0x1fff

    const/16 v18, 0xd

    :goto_35c
    add-int/lit8 v28, v5, 0x1

    .line 208
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_36e

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v18

    or-int/2addr v2, v5

    add-int/lit8 v18, v18, 0xd

    move/from16 v5, v28

    goto :goto_35c

    :cond_36e
    shl-int v5, v5, v18

    or-int/2addr v2, v5

    goto :goto_374

    :cond_372
    move/from16 v28, v5

    :goto_374
    const/4 v5, 0x1

    shl-int/lit8 v18, v16, 0x1

    .line 213
    div-int/lit8 v24, v2, 0x20

    add-int v18, v18, v24

    .line 214
    aget-object v5, v17, v18

    .line 215
    instance-of v7, v5, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_384

    .line 216
    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_38c

    .line 217
    :cond_384
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 218
    aput-object v5, v17, v18

    :goto_38c
    move-object/from16 v18, v8

    .line 219
    invoke-virtual {v3, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v5, v7

    .line 220
    rem-int/lit8 v2, v2, 0x20

    goto :goto_39e

    :cond_396
    move-object/from16 v18, v8

    const v5, 0xfffff

    move/from16 v28, v2

    const/4 v2, 0x0

    :goto_39e
    const/16 v7, 0x12

    if-lt v14, v7, :cond_3ac

    const/16 v7, 0x31

    if-gt v14, v7, :cond_3ac

    add-int/lit8 v7, v22, 0x1

    .line 225
    aput v6, v15, v22

    move/from16 v22, v7

    :cond_3ac
    move/from16 v7, v27

    :goto_3ae
    add-int/lit8 v8, v20, 0x1

    .line 226
    aput v10, v12, v20

    add-int/lit8 v10, v8, 0x1

    move-object/from16 v20, v1

    and-int/lit16 v1, v4, 0x200

    if-eqz v1, :cond_3bd

    const/high16 v1, 0x20000000

    goto :goto_3be

    :cond_3bd
    const/4 v1, 0x0

    :goto_3be
    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_3c5

    const/high16 v4, 0x10000000

    goto :goto_3c6

    :cond_3c5
    const/4 v4, 0x0

    :goto_3c6
    or-int/2addr v1, v4

    shl-int/lit8 v4, v14, 0x14

    or-int/2addr v1, v4

    or-int/2addr v1, v6

    .line 229
    aput v1, v12, v8

    add-int/lit8 v1, v10, 0x1

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v2, v5

    .line 230
    aput v2, v12, v10

    move-object v6, v12

    move-object/from16 v8, v18

    move/from16 v14, v23

    move/from16 v2, v25

    move/from16 v12, v26

    move/from16 v10, v28

    move/from16 v5, v29

    const/4 v4, 0x1

    move-object/from16 v32, v20

    move/from16 v20, v1

    move-object/from16 v1, v32

    goto/16 :goto_1a8

    :cond_3ea
    move/from16 v26, v12

    move/from16 v23, v14

    move-object v12, v6

    .line 232
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;

    .line 233
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzkb;->zzc()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object v10

    const/4 v0, 0x0

    move-object v5, v1

    move-object v7, v13

    move v8, v9

    move/from16 v9, v26

    move v12, v0

    move-object v13, v15

    move/from16 v15, v19

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lcom/google/android/gms/internal/firebase_auth/zzjr;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/firebase_auth/zzjn;ZZ[IIILcom/google/android/gms/internal/firebase_auth/zzjw;Lcom/google/android/gms/internal/firebase_auth/zzix;Lcom/google/android/gms/internal/firebase_auth/zzkz;Lcom/google/android/gms/internal/firebase_auth/zzhu;Lcom/google/android/gms/internal/firebase_auth/zzjk;)V

    return-object v1

    .line 235
    :cond_40d
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzks;

    .line 236
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzks;->zza()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zzi:I

    .line 237
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    return-void
.end method

.method private final zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;
    .registers 5

    .line 3032
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 3033
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzkd;

    if-eqz v0, :cond_d

    return-object v0

    .line 3036
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    .line 3037
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zza(IILjava/util/Map;Lcom/google/android/gms/internal/firebase_auth/zzij;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkz;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzij;",
            "TUB;",
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 3073
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    .line 3074
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzji;

    move-result-object p1

    .line 3075
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_12
    :goto_12
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 3076
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3077
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzij;->zza(I)Z

    move-result v1

    if-nez v1, :cond_12

    if-nez p5, :cond_34

    .line 3079
    invoke-virtual {p6}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zza()Ljava/lang/Object;

    move-result-object p5

    .line 3081
    :cond_34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjf;->zza(Lcom/google/android/gms/internal/firebase_auth/zzji;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 3082
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->zzc(I)Lcom/google/android/gms/internal/firebase_auth/zzhd;

    move-result-object v1

    .line 3083
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzhd;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzhm;

    move-result-object v2

    .line 3084
    :try_start_48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjf;->zza(Lcom/google/android/gms/internal/firebase_auth/zzhm;Lcom/google/android/gms/internal/firebase_auth/zzji;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_53} :catch_5e

    .line 3088
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzhd;->zza()Lcom/google/android/gms/internal/firebase_auth/zzgv;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    .line 3089
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    :catch_5e
    move-exception p1

    .line 3087
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_65
    return-object p5
.end method

.method private final zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkz;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 3058
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v3, v0, p2

    .line 3060
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 3063
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_14

    return-object p3

    .line 3066
    :cond_14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(I)Lcom/google/android/gms/internal/firebase_auth/zzij;

    move-result-object v5

    if-nez v5, :cond_1b

    return-object p3

    .line 3069
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->zza(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    .line 3071
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(IILjava/util/Map;Lcom/google/android/gms/internal/firebase_auth/zzij;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkz;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 238
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 240
    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 241
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 242
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 245
    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method

.method private static zza(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1218
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3162
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 3163
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ILjava/lang/String;)V

    return-void

    .line 3164
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/firebase_auth/zzls;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2498
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_auth/zzls;ILjava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_auth/zzls;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_15

    .line 2493
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    .line 2494
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzji;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    .line 2495
    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->zzc(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 2496
    invoke-interface {p1, p2, p4, p3}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ILcom/google/android/gms/internal/firebase_auth/zzji;Ljava/util/Map;)V

    :cond_15
    return-void
.end method

.method private final zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase_auth/zzke;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3166
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzf(I)Z

    move-result v0

    const v1, 0xfffff

    if-eqz v0, :cond_13

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 3169
    invoke-interface {p3}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 3170
    :cond_13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzi:Z

    if-eqz v0, :cond_21

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 3173
    invoke-interface {p3}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_21
    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 3176
    invoke-interface {p3}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzn()Lcom/google/android/gms/internal/firebase_auth/zzgv;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final zza(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 539
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 542
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 544
    :cond_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 545
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_27

    if-eqz p2, :cond_27

    .line 547
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 548
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 549
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    return-void

    :cond_27
    if-eqz p2, :cond_2f

    .line 551
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 552
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    :cond_2f
    return-void
.end method

.method private final zza(Ljava/lang/Object;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 3190
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0xfffff

    cmp-long v8, v2, v6

    if-nez v8, :cond_ec

    .line 3193
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v2, 0xff00000

    and-int/2addr p2, v2

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_fa

    .line 3223
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3222
    :pswitch_2a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_31

    return v5

    :cond_31
    return v4

    .line 3221
    :pswitch_32
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3b

    return v5

    :cond_3b
    return v4

    .line 3220
    :pswitch_3c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_43

    return v5

    :cond_43
    return v4

    .line 3219
    :pswitch_44
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4d

    return v5

    :cond_4d
    return v4

    .line 3218
    :pswitch_4e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_55

    return v5

    :cond_55
    return v4

    .line 3217
    :pswitch_56
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5d

    return v5

    :cond_5d
    return v4

    .line 3216
    :pswitch_5e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_65

    return v5

    :cond_65
    return v4

    .line 3215
    :pswitch_66
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzgv;->zza:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_73

    return v5

    :cond_73
    return v4

    .line 3214
    :pswitch_74
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7b

    return v5

    :cond_7b
    return v4

    .line 3208
    :pswitch_7c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 3209
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_8e

    .line 3210
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8d

    return v5

    :cond_8d
    return v4

    .line 3211
    :cond_8e
    instance-of p2, p1, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz p2, :cond_9c

    .line 3212
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzgv;->zza:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9b

    return v5

    :cond_9b
    return v4

    .line 3213
    :cond_9c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3207
    :pswitch_a2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzc(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 3206
    :pswitch_a7
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_ae

    return v5

    :cond_ae
    return v4

    .line 3205
    :pswitch_af
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_b8

    return v5

    :cond_b8
    return v4

    .line 3204
    :pswitch_b9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_c0

    return v5

    :cond_c0
    return v4

    .line 3203
    :pswitch_c1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_ca

    return v5

    :cond_ca
    return v4

    .line 3202
    :pswitch_cb
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_d4

    return v5

    :cond_d4
    return v4

    .line 3201
    :pswitch_d5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzd(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_df

    return v5

    :cond_df
    return v4

    .line 3200
    :pswitch_e0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zze(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_eb

    return v5

    :cond_eb
    return v4

    :cond_ec
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    .line 3225
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_f8

    return v5

    :cond_f8
    return v4

    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_d5
        :pswitch_cb
        :pswitch_c1
        :pswitch_b9
        :pswitch_af
        :pswitch_a7
        :pswitch_a2
        :pswitch_7c
        :pswitch_74
        :pswitch_66
        :pswitch_5e
        :pswitch_56
        :pswitch_4e
        :pswitch_44
        :pswitch_3c
        :pswitch_32
        :pswitch_2a
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 3235
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 3236
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/Object;IIII)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_a

    .line 3188
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_a
    and-int p1, p4, p5

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private static zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase_auth/zzkd;)Z
    .registers 5

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 3160
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 3161
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zzd(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzb(Ljava/lang/Object;J)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 3181
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final zzb(I)Ljava/lang/Object;
    .registers 3

    .line 3039
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzb(Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 3226
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    return-void

    :cond_11
    const/4 v2, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v2, p2

    .line 3232
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    .line 3233
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 3237
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 3238
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/firebase_auth/zzls;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2168
    iget-boolean v3, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzh:Z

    if-eqz v3, :cond_23

    .line 2169
    iget-object v3, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object v3

    .line 2171
    iget-object v5, v3, Lcom/google/android/gms/internal/firebase_auth/zzhv;->zza:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase_auth/zzki;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_23

    .line 2173
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->zzd()Ljava/util/Iterator;

    move-result-object v3

    .line 2174
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_25

    :cond_23
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2177
    :goto_25
    iget-object v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    array-length v6, v6

    .line 2178
    sget-object v7, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb:Lsun/misc/Unsafe;

    move-object v11, v5

    const/4 v5, 0x0

    const v10, 0xfffff

    const/4 v12, 0x0

    :goto_30
    if-ge v5, v6, :cond_49c

    .line 2180
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(I)I

    move-result v13

    .line 2182
    iget-object v14, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v15, v14, v5

    const/high16 v16, 0xff00000

    and-int v16, v13, v16

    ushr-int/lit8 v4, v16, 0x14

    .line 2188
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzj:Z

    if-nez v9, :cond_64

    const/16 v9, 0x11

    if-gt v4, v9, :cond_64

    add-int/lit8 v9, v5, 0x2

    .line 2189
    aget v9, v14, v9

    const v14, 0xfffff

    and-int v8, v9, v14

    if-eq v8, v10, :cond_5a

    move-object v14, v11

    int-to-long v10, v8

    .line 2193
    invoke-virtual {v7, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    goto :goto_5c

    :cond_5a
    move-object v14, v11

    move v8, v10

    :goto_5c
    ushr-int/lit8 v9, v9, 0x14

    const/4 v10, 0x1

    shl-int v9, v10, v9

    move v10, v8

    move-object v11, v14

    goto :goto_67

    :cond_64
    move-object v14, v11

    move-object v11, v14

    const/4 v9, 0x0

    :goto_67
    if-eqz v11, :cond_86

    .line 2195
    iget-object v8, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v15, :cond_86

    .line 2196
    iget-object v8, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v8, v2, v11}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Lcom/google/android/gms/internal/firebase_auth/zzls;Ljava/util/Map$Entry;)V

    .line 2197
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_84

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v11, v8

    goto :goto_67

    :cond_84
    const/4 v11, 0x0

    goto :goto_67

    :cond_86
    const v8, 0xfffff

    and-int/2addr v13, v8

    int-to-long v13, v13

    packed-switch v4, :pswitch_data_4ba

    :cond_8e
    :goto_8e
    const/4 v4, 0x0

    goto/16 :goto_498

    .line 2482
    :pswitch_91
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2484
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v9

    .line 2485
    invoke-interface {v2, v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto :goto_8e

    .line 2480
    :pswitch_a3
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2481
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zze(IJ)V

    goto :goto_8e

    .line 2478
    :pswitch_b1
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2479
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzf(II)V

    goto :goto_8e

    .line 2476
    :pswitch_bf
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2477
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(IJ)V

    goto :goto_8e

    .line 2474
    :pswitch_cd
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2475
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(II)V

    goto :goto_8e

    .line 2472
    :pswitch_db
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2473
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(II)V

    goto :goto_8e

    .line 2470
    :pswitch_e9
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2471
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zze(II)V

    goto :goto_8e

    .line 2468
    :pswitch_f7
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2469
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    goto :goto_8e

    .line 2464
    :pswitch_107
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2465
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2466
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v9

    invoke-interface {v2, v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_8e

    .line 2462
    :pswitch_11a
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2463
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v4, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_8e

    .line 2460
    :pswitch_129
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2461
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzf(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IZ)V

    goto/16 :goto_8e

    .line 2458
    :pswitch_138
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2459
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzd(II)V

    goto/16 :goto_8e

    .line 2456
    :pswitch_147
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2457
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzd(IJ)V

    goto/16 :goto_8e

    .line 2454
    :pswitch_156
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2455
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzc(II)V

    goto/16 :goto_8e

    .line 2452
    :pswitch_165
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2453
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzc(IJ)V

    goto/16 :goto_8e

    .line 2450
    :pswitch_174
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2451
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IJ)V

    goto/16 :goto_8e

    .line 2448
    :pswitch_183
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2449
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IF)V

    goto/16 :goto_8e

    .line 2446
    :pswitch_192
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2447
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;J)D

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ID)V

    goto/16 :goto_8e

    .line 2444
    :pswitch_1a1
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v15, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Lcom/google/android/gms/internal/firebase_auth/zzls;ILjava/lang/Object;I)V

    goto/16 :goto_8e

    .line 2438
    :pswitch_1aa
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2440
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2441
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v13

    .line 2442
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_8e

    .line 2432
    :pswitch_1bd
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2433
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v15, 0x1

    .line 2434
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zze(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_1cd
    const/4 v15, 0x1

    .line 2426
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2427
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2428
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_1dd
    const/4 v15, 0x1

    .line 2420
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2421
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2422
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_1ed
    const/4 v15, 0x1

    .line 2414
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2415
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2416
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_1fd
    const/4 v15, 0x1

    .line 2408
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2409
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2410
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_20d
    const/4 v15, 0x1

    .line 2402
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2403
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2404
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_21d
    const/4 v15, 0x1

    .line 2396
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2397
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2398
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_22d
    const/4 v15, 0x1

    .line 2390
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2391
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2392
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_23d
    const/4 v15, 0x1

    .line 2384
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2385
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2386
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_24d
    const/4 v15, 0x1

    .line 2378
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2379
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2380
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_25d
    const/4 v15, 0x1

    .line 2372
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2373
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2374
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_26d
    const/4 v15, 0x1

    .line 2366
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2367
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2368
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_27d
    const/4 v15, 0x1

    .line 2360
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2361
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2362
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_28d
    const/4 v15, 0x1

    .line 2354
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2355
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2356
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    .line 2348
    :pswitch_29d
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2349
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v15, 0x0

    .line 2350
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zze(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_2ad
    const/4 v15, 0x0

    .line 2342
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2343
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2344
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_2bd
    const/4 v15, 0x0

    .line 2336
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2337
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2338
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_2cd
    const/4 v15, 0x0

    .line 2330
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2331
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2332
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_2dd
    const/4 v15, 0x0

    .line 2324
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2325
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2326
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_2ed
    const/4 v15, 0x0

    .line 2318
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2319
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2320
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    .line 2312
    :pswitch_2fd
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2313
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2314
    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_8e

    .line 2304
    :pswitch_30c
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2306
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2307
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v13

    .line 2308
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_8e

    .line 2298
    :pswitch_31f
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2299
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2300
    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_8e

    .line 2292
    :pswitch_32e
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2293
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v15, 0x0

    .line 2294
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_33e
    const/4 v15, 0x0

    .line 2286
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2287
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2288
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_34e
    const/4 v15, 0x0

    .line 2280
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2281
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2282
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_35e
    const/4 v15, 0x0

    .line 2274
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2275
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2276
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_36e
    const/4 v15, 0x0

    .line 2268
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2269
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2270
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_37e
    const/4 v15, 0x0

    .line 2262
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2263
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2264
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_38e
    const/4 v15, 0x0

    .line 2256
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2257
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2258
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_39e
    const/4 v15, 0x0

    .line 2250
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v5

    .line 2251
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2252
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_8e

    :pswitch_3ae
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2246
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v13

    .line 2247
    invoke-interface {v2, v15, v9, v13}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_498

    :pswitch_3bf
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2243
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zze(IJ)V

    goto/16 :goto_498

    :pswitch_3cc
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2241
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzf(II)V

    goto/16 :goto_498

    :pswitch_3d9
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2239
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(IJ)V

    goto/16 :goto_498

    :pswitch_3e6
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2237
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(II)V

    goto/16 :goto_498

    :pswitch_3f3
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2235
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(II)V

    goto/16 :goto_498

    :pswitch_400
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2233
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zze(II)V

    goto/16 :goto_498

    :pswitch_40d
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2231
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    goto/16 :goto_498

    :pswitch_41c
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2227
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2228
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v13

    invoke-interface {v2, v15, v9, v13}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_498

    :pswitch_42d
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2225
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v15, v9, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto :goto_498

    :pswitch_439
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2222
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzc(Ljava/lang/Object;J)Z

    move-result v9

    .line 2223
    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IZ)V

    goto :goto_498

    :pswitch_445
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2219
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzd(II)V

    goto :goto_498

    :pswitch_451
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2217
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzd(IJ)V

    goto :goto_498

    :pswitch_45d
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2215
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzc(II)V

    goto :goto_498

    :pswitch_469
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2213
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzc(IJ)V

    goto :goto_498

    :pswitch_475
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2211
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IJ)V

    goto :goto_498

    :pswitch_481
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2208
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzd(Ljava/lang/Object;J)F

    move-result v9

    .line 2209
    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IF)V

    goto :goto_498

    :pswitch_48d
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_498

    .line 2204
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zze(Ljava/lang/Object;J)D

    move-result-wide v13

    .line 2205
    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ID)V

    :cond_498
    :goto_498
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_30

    :cond_49c
    move-object v14, v11

    :goto_49d
    if-eqz v14, :cond_4b4

    .line 2488
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v4, v2, v14}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Lcom/google/android/gms/internal/firebase_auth/zzls;Ljava/util/Map$Entry;)V

    .line 2489
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v14, v4

    goto :goto_49d

    :cond_4b2
    const/4 v14, 0x0

    goto :goto_49d

    .line 2490
    :cond_4b4
    iget-object v3, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    return-void

    :pswitch_data_4ba
    .packed-switch 0x0
        :pswitch_48d
        :pswitch_481
        :pswitch_475
        :pswitch_469
        :pswitch_45d
        :pswitch_451
        :pswitch_445
        :pswitch_439
        :pswitch_42d
        :pswitch_41c
        :pswitch_40d
        :pswitch_400
        :pswitch_3f3
        :pswitch_3e6
        :pswitch_3d9
        :pswitch_3cc
        :pswitch_3bf
        :pswitch_3ae
        :pswitch_39e
        :pswitch_38e
        :pswitch_37e
        :pswitch_36e
        :pswitch_35e
        :pswitch_34e
        :pswitch_33e
        :pswitch_32e
        :pswitch_31f
        :pswitch_30c
        :pswitch_2fd
        :pswitch_2ed
        :pswitch_2dd
        :pswitch_2cd
        :pswitch_2bd
        :pswitch_2ad
        :pswitch_29d
        :pswitch_28d
        :pswitch_27d
        :pswitch_26d
        :pswitch_25d
        :pswitch_24d
        :pswitch_23d
        :pswitch_22d
        :pswitch_21d
        :pswitch_20d
        :pswitch_1fd
        :pswitch_1ed
        :pswitch_1dd
        :pswitch_1cd
        :pswitch_1bd
        :pswitch_1aa
        :pswitch_1a1
        :pswitch_192
        :pswitch_183
        :pswitch_174
        :pswitch_165
        :pswitch_156
        :pswitch_147
        :pswitch_138
        :pswitch_129
        :pswitch_11a
        :pswitch_107
        :pswitch_f7
        :pswitch_e9
        :pswitch_db
        :pswitch_cd
        :pswitch_bf
        :pswitch_b1
        :pswitch_a3
        :pswitch_91
    .end packed-switch
.end method

.method private final zzb(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 554
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(I)I

    move-result v0

    .line 556
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 561
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 563
    :cond_14
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 564
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_2b

    if-eqz p2, :cond_2b

    .line 566
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 567
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 568
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    return-void

    :cond_2b
    if-eqz p2, :cond_33

    .line 570
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 571
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    :cond_33
    return-void
.end method

.method private static zzc(Ljava/lang/Object;J)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 3182
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final zzc(I)Lcom/google/android/gms/internal/firebase_auth/zzij;
    .registers 3

    .line 3040
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzij;

    return-object p1
.end method

.method private final zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 3186
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private final zzd(I)I
    .registers 3

    .line 3178
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static zzd(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 3183
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zze(I)I
    .registers 3

    .line 3179
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static zze(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 3184
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzf(I)Z
    .registers 2

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private static zzf(Ljava/lang/Object;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 3185
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v0, :cond_22c

    .line 349
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(I)I

    move-result v3

    .line 351
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_24c

    goto/16 :goto_228

    .line 447
    :pswitch_20
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    .line 448
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 449
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 445
    :pswitch_32
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 446
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(J)I

    move-result v3

    goto/16 :goto_227

    .line 443
    :pswitch_44
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 444
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 441
    :pswitch_52
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 442
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(J)I

    move-result v3

    goto/16 :goto_227

    .line 439
    :pswitch_64
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 440
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 437
    :pswitch_72
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 438
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 435
    :pswitch_80
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 436
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 433
    :pswitch_8e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 434
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 429
    :pswitch_a0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    .line 430
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 431
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 426
    :pswitch_b2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 428
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 424
    :pswitch_c6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 425
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzf(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(Z)I

    move-result v3

    goto/16 :goto_227

    .line 422
    :pswitch_d8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 423
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 420
    :pswitch_e6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 421
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(J)I

    move-result v3

    goto/16 :goto_227

    .line 418
    :pswitch_f8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 419
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 416
    :pswitch_106
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 417
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(J)I

    move-result v3

    goto/16 :goto_227

    .line 414
    :pswitch_118
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 415
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(J)I

    move-result v3

    goto/16 :goto_227

    .line 412
    :pswitch_12a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 413
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_227

    .line 409
    :pswitch_13c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 411
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_152
    mul-int/lit8 v2, v2, 0x35

    .line 407
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    :pswitch_15e
    mul-int/lit8 v2, v2, 0x35

    .line 405
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 400
    :pswitch_16a
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c3

    .line 402
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1c3

    :pswitch_175
    mul-int/lit8 v2, v2, 0x35

    .line 397
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_181
    mul-int/lit8 v2, v2, 0x35

    .line 395
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_189
    mul-int/lit8 v2, v2, 0x35

    .line 393
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_195
    mul-int/lit8 v2, v2, 0x35

    .line 391
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_19d
    mul-int/lit8 v2, v2, 0x35

    .line 389
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_1a5
    mul-int/lit8 v2, v2, 0x35

    .line 387
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_1ad
    mul-int/lit8 v2, v2, 0x35

    .line 385
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 380
    :pswitch_1b9
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c3

    .line 382
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1c3
    :goto_1c3
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_228

    :pswitch_1c7
    mul-int/lit8 v2, v2, 0x35

    .line 377
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_227

    :pswitch_1d4
    mul-int/lit8 v2, v2, 0x35

    .line 375
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzc(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(Z)I

    move-result v3

    goto :goto_227

    :pswitch_1df
    mul-int/lit8 v2, v2, 0x35

    .line 373
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_227

    :pswitch_1e6
    mul-int/lit8 v2, v2, 0x35

    .line 371
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(J)I

    move-result v3

    goto :goto_227

    :pswitch_1f1
    mul-int/lit8 v2, v2, 0x35

    .line 369
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_227

    :pswitch_1f8
    mul-int/lit8 v2, v2, 0x35

    .line 367
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(J)I

    move-result v3

    goto :goto_227

    :pswitch_203
    mul-int/lit8 v2, v2, 0x35

    .line 365
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(J)I

    move-result v3

    goto :goto_227

    :pswitch_20e
    mul-int/lit8 v2, v2, 0x35

    .line 363
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzd(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_227

    :pswitch_219
    mul-int/lit8 v2, v2, 0x35

    .line 360
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zze(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 361
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(J)I

    move-result v3

    :goto_227
    add-int/2addr v2, v3

    :cond_228
    :goto_228
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_5

    :cond_22c
    mul-int/lit8 v2, v2, 0x35

    .line 451
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 452
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzh:Z

    if-eqz v0, :cond_24a

    mul-int/lit8 v2, v2, 0x35

    .line 453
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_24a
    return v2

    nop

    :pswitch_data_24c
    .packed-switch 0x0
        :pswitch_219
        :pswitch_20e
        :pswitch_203
        :pswitch_1f8
        :pswitch_1f1
        :pswitch_1e6
        :pswitch_1df
        :pswitch_1d4
        :pswitch_1c7
        :pswitch_1b9
        :pswitch_1ad
        :pswitch_1a5
        :pswitch_19d
        :pswitch_195
        :pswitch_189
        :pswitch_181
        :pswitch_175
        :pswitch_16a
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_152
        :pswitch_13c
        :pswitch_12a
        :pswitch_118
        :pswitch_106
        :pswitch_f8
        :pswitch_e6
        :pswitch_d8
        :pswitch_c6
        :pswitch_b2
        :pswitch_a0
        :pswitch_8e
        :pswitch_80
        :pswitch_72
        :pswitch_64
        :pswitch_52
        :pswitch_44
        :pswitch_32
        :pswitch_20
    .end packed-switch
.end method

.method public final zza()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzo:Lcom/google/android/gms/internal/firebase_auth/zzjw;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjw;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzke;Lcom/google/android/gms/internal/firebase_auth/zzhs;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/firebase_auth/zzke;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhs;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    if-eqz v10, :cond_5ed

    .line 2502
    iget-object v11, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    iget-object v12, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    const/4 v13, 0x0

    move-object v3, v13

    move-object v14, v3

    .line 2505
    :cond_11
    :goto_11
    :try_start_11
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zza()I

    move-result v4

    .line 2507
    iget v5, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze:I

    const/4 v6, -0x1

    if-lt v4, v5, :cond_3e

    iget v5, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzf:I

    if-gt v4, v5, :cond_3e

    const/4 v5, 0x0

    .line 2509
    iget-object v7, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    array-length v7, v7

    div-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, -0x1

    :goto_26
    if-gt v5, v7, :cond_3e

    add-int v8, v7, v5

    ushr-int/lit8 v8, v8, 0x1

    mul-int/lit8 v9, v8, 0x3

    .line 2514
    iget-object v15, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v15, v15, v9
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_5d5

    if-ne v4, v15, :cond_36

    move v6, v9

    goto :goto_3e

    :cond_36
    if-ge v4, v15, :cond_3b

    add-int/lit8 v7, v8, -0x1

    goto :goto_26

    :cond_3b
    add-int/lit8 v5, v8, 0x1

    goto :goto_26

    :cond_3e
    :goto_3e
    if-gez v6, :cond_a6

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_5c

    .line 2528
    iget v0, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzm:I

    :goto_47
    iget v3, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzn:I

    if-ge v0, v3, :cond_56

    .line 2529
    iget-object v3, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzl:[I

    aget v3, v3, v0

    .line 2530
    invoke-direct {v1, v2, v3, v14, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkz;)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_56
    if-eqz v14, :cond_5b

    .line 2533
    invoke-virtual {v11, v2, v14}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    return-void

    .line 2535
    :cond_5c
    :try_start_5c
    iget-boolean v5, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzh:Z

    if-nez v5, :cond_62

    move-object v5, v13

    goto :goto_69

    .line 2537
    :cond_62
    iget-object v5, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    invoke-virtual {v12, v10, v5, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Lcom/google/android/gms/internal/firebase_auth/zzhs;Lcom/google/android/gms/internal/firebase_auth/zzjn;I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    :goto_69
    if-eqz v5, :cond_80

    if-nez v3, :cond_71

    .line 2540
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object v3

    :cond_71
    move-object v15, v3

    move-object v3, v12

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object v7, v15

    move-object v8, v14

    move-object v9, v11

    .line 2542
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Lcom/google/android/gms/internal/firebase_auth/zzke;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzhs;Lcom/google/android/gms/internal/firebase_auth/zzhv;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkz;)Ljava/lang/Object;

    move-result-object v14

    move-object v3, v15

    goto :goto_11

    .line 2544
    :cond_80
    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zza(Lcom/google/android/gms/internal/firebase_auth/zzke;)Z

    if-nez v14, :cond_89

    .line 2546
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 2547
    :cond_89
    invoke-virtual {v11, v14, v0}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzke;)Z

    move-result v4
    :try_end_8d
    .catchall {:try_start_5c .. :try_end_8d} :catchall_5d5

    if-nez v4, :cond_11

    .line 2548
    iget v0, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzm:I

    :goto_91
    iget v3, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzn:I

    if-ge v0, v3, :cond_a0

    .line 2549
    iget-object v3, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzl:[I

    aget v3, v3, v0

    .line 2550
    invoke-direct {v1, v2, v3, v14, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkz;)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    :cond_a0
    if-eqz v14, :cond_a5

    .line 2553
    invoke-virtual {v11, v2, v14}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a5
    return-void

    .line 2555
    :cond_a6
    :try_start_a6
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(I)I

    move-result v5
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_5d5

    const/high16 v7, 0xff00000

    and-int/2addr v7, v5

    ushr-int/lit8 v7, v7, 0x14

    const v8, 0xfffff

    packed-switch v7, :pswitch_data_5f4

    if-nez v14, :cond_591

    .line 3002
    :try_start_b7
    invoke-virtual {v11}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zza()Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_591

    :pswitch_bd
    and-int/2addr v5, v8

    int-to-long v7, v5

    .line 2997
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v5

    invoke-interface {v0, v5, v10}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzb(Lcom/google/android/gms/internal/firebase_auth/zzkd;Lcom/google/android/gms/internal/firebase_auth/zzhs;)Ljava/lang/Object;

    move-result-object v5

    .line 2998
    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2999
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    :pswitch_cf
    and-int/2addr v5, v8

    int-to-long v7, v5

    .line 2990
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzt()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2991
    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2992
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    :pswitch_e1
    and-int/2addr v5, v8

    int-to-long v7, v5

    .line 2984
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzs()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2985
    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2986
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    :pswitch_f3
    and-int/2addr v5, v8

    int-to-long v7, v5

    .line 2978
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzr()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2979
    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2980
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    :pswitch_105
    and-int/2addr v5, v8

    int-to-long v7, v5

    .line 2972
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzq()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2973
    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2974
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    .line 2960
    :pswitch_117
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzp()I

    move-result v7

    .line 2961
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(I)Lcom/google/android/gms/internal/firebase_auth/zzij;

    move-result-object v9

    if-eqz v9, :cond_12e

    .line 2962
    invoke-interface {v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzij;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_128

    goto :goto_12e

    .line 2968
    :cond_128
    invoke-static {v4, v7, v14, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkz;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_11

    :cond_12e
    :goto_12e
    and-int/2addr v5, v8

    int-to-long v8, v5

    .line 2965
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v8, v9, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2966
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    :pswitch_13c
    and-int/2addr v5, v8

    int-to-long v7, v5

    .line 2956
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzo()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2957
    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2958
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    :pswitch_14e
    and-int/2addr v5, v8

    int-to-long v7, v5

    .line 2951
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzn()Lcom/google/android/gms/internal/firebase_auth/zzgv;

    move-result-object v5

    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2952
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    .line 2929
    :pswitch_15c
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_178

    and-int/2addr v5, v8

    int-to-long v7, v5

    .line 2932
    invoke-static {v2, v7, v8}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2933
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v9

    .line 2934
    invoke-interface {v0, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zza(Lcom/google/android/gms/internal/firebase_auth/zzkd;Lcom/google/android/gms/internal/firebase_auth/zzhs;)Ljava/lang/Object;

    move-result-object v9

    .line 2935
    invoke-static {v5, v9}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2938
    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_188

    :cond_178
    and-int/2addr v5, v8

    int-to-long v7, v5

    .line 2943
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v5

    .line 2944
    invoke-interface {v0, v5, v10}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zza(Lcom/google/android/gms/internal/firebase_auth/zzkd;Lcom/google/android/gms/internal/firebase_auth/zzhs;)Ljava/lang/Object;

    move-result-object v5

    .line 2945
    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2946
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    .line 2947
    :goto_188
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    .line 2926
    :pswitch_18d
    invoke-direct {v1, v2, v5, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase_auth/zzke;)V

    .line 2927
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    :pswitch_195
    and-int/2addr v5, v8

    int-to-long v7, v5

    .line 2922
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzk()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2923
    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2924
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    :pswitch_1a7
    and-int/2addr v5, v8

    int-to-long v7, v5

    .line 2916
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzj()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2917
    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2918
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    :pswitch_1b9
    and-int/2addr v5, v8

    int-to-long v7, v5

    .line 2910
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzi()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2911
    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2912
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    :pswitch_1cb
    and-int/2addr v5, v8

    int-to-long v7, v5

    .line 2904
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzh()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2905
    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2906
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    :pswitch_1dd
    and-int/2addr v5, v8

    int-to-long v7, v5

    .line 2898
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzf()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2899
    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2900
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    :pswitch_1ef
    and-int/2addr v5, v8

    int-to-long v7, v5

    .line 2892
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzg()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2893
    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2894
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    :pswitch_201
    and-int/2addr v5, v8

    int-to-long v7, v5

    .line 2886
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zze()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 2887
    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2888
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    :pswitch_213
    and-int/2addr v5, v8

    int-to-long v7, v5

    .line 2880
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzd()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 2881
    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2882
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_11

    .line 2860
    :pswitch_225
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(I)Ljava/lang/Object;

    move-result-object v4

    .line 2861
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(I)I

    move-result v5

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2864
    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_23f

    .line 2866
    iget-object v7, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    invoke-interface {v7, v4}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->zzf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 2867
    invoke-static {v2, v5, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_256

    .line 2868
    :cond_23f
    iget-object v8, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->zzd(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_256

    .line 2870
    iget-object v8, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->zzf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 2871
    iget-object v9, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    invoke-interface {v9, v8, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2872
    invoke-static {v2, v5, v6, v8}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v7, v8

    .line 2873
    :cond_256
    :goto_256
    iget-object v5, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    .line 2874
    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->zza(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    .line 2875
    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzji;

    move-result-object v4

    .line 2876
    invoke-interface {v0, v5, v4, v10}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/firebase_auth/zzji;Lcom/google/android/gms/internal/firebase_auth/zzhs;)V

    goto/16 :goto_11

    :pswitch_267
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2854
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v6

    .line 2856
    iget-object v7, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    .line 2857
    invoke-virtual {v7, v2, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2858
    invoke-interface {v0, v4, v6, v10}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzkd;Lcom/google/android/gms/internal/firebase_auth/zzhs;)V

    goto/16 :goto_11

    .line 2846
    :pswitch_279
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2848
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2849
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzq(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2841
    :pswitch_286
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2843
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2844
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzp(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2836
    :pswitch_293
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2838
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2839
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzo(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2831
    :pswitch_2a0
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2833
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2834
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzn(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2823
    :pswitch_2ad
    iget-object v7, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v8, v5

    .line 2825
    invoke-virtual {v7, v2, v8, v9}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 2826
    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzm(Ljava/util/List;)V

    .line 2828
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(I)Lcom/google/android/gms/internal/firebase_auth/zzij;

    move-result-object v6

    .line 2829
    invoke-static {v4, v5, v6, v14, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzij;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkz;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_11

    .line 2818
    :pswitch_2c2
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2820
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2821
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzl(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2813
    :pswitch_2cf
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2815
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2816
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzh(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2808
    :pswitch_2dc
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2810
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2811
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzg(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2803
    :pswitch_2e9
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2805
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2806
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzf(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2798
    :pswitch_2f6
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2800
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2801
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zze(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2793
    :pswitch_303
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2795
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2796
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzc(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2788
    :pswitch_310
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2790
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2791
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzd(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2783
    :pswitch_31d
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2785
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2786
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzb(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2778
    :pswitch_32a
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2780
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2781
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zza(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2773
    :pswitch_337
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2775
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2776
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzq(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2768
    :pswitch_344
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2770
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2771
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzp(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2763
    :pswitch_351
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2765
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2766
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzo(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2758
    :pswitch_35e
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2760
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2761
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzn(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2750
    :pswitch_36b
    iget-object v7, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v8, v5

    .line 2752
    invoke-virtual {v7, v2, v8, v9}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 2753
    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzm(Ljava/util/List;)V

    .line 2755
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(I)Lcom/google/android/gms/internal/firebase_auth/zzij;

    move-result-object v6

    .line 2756
    invoke-static {v4, v5, v6, v14, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzij;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkz;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_11

    .line 2745
    :pswitch_380
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2747
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2748
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzl(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2740
    :pswitch_38d
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2742
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2743
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzk(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2731
    :pswitch_39a
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v4

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2736
    iget-object v7, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    .line 2737
    invoke-virtual {v7, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 2738
    invoke-interface {v0, v5, v4, v10}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zza(Ljava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzkd;Lcom/google/android/gms/internal/firebase_auth/zzhs;)V

    goto/16 :goto_11

    .line 2721
    :pswitch_3ab
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzf(I)Z

    move-result v4

    if-eqz v4, :cond_3be

    .line 2722
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2724
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2725
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzj(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2726
    :cond_3be
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2728
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzi(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2715
    :pswitch_3cb
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2717
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2718
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzh(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2710
    :pswitch_3d8
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2712
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2713
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzg(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2705
    :pswitch_3e5
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2707
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2708
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzf(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2700
    :pswitch_3f2
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2702
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2703
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zze(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2695
    :pswitch_3ff
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2697
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2698
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzc(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2690
    :pswitch_40c
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2692
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2693
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzd(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2685
    :pswitch_419
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2687
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2688
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzb(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2680
    :pswitch_426
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    and-int/2addr v5, v8

    int-to-long v5, v5

    .line 2682
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2683
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zza(Ljava/util/List;)V

    goto/16 :goto_11

    .line 2661
    :pswitch_433
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_451

    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2664
    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 2665
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v6

    .line 2666
    invoke-interface {v0, v6, v10}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzb(Lcom/google/android/gms/internal/firebase_auth/zzkd;Lcom/google/android/gms/internal/firebase_auth/zzhs;)Ljava/lang/Object;

    move-result-object v6

    .line 2667
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2670
    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_11

    :cond_451
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2675
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v7

    .line 2676
    invoke-interface {v0, v7, v10}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzb(Lcom/google/android/gms/internal/firebase_auth/zzkd;Lcom/google/android/gms/internal/firebase_auth/zzhs;)Ljava/lang/Object;

    move-result-object v7

    .line 2677
    invoke-static {v2, v4, v5, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2678
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    :pswitch_464
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2658
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzt()J

    move-result-wide v7

    invoke-static {v2, v4, v5, v7, v8}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JJ)V

    .line 2659
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    :pswitch_473
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2653
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzs()I

    move-result v7

    invoke-static {v2, v4, v5, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JI)V

    .line 2654
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    :pswitch_482
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2648
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzr()J

    move-result-wide v7

    invoke-static {v2, v4, v5, v7, v8}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JJ)V

    .line 2649
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    :pswitch_491
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2643
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzq()I

    move-result v7

    invoke-static {v2, v4, v5, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JI)V

    .line 2644
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    .line 2631
    :pswitch_4a0
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzp()I

    move-result v7

    .line 2632
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(I)Lcom/google/android/gms/internal/firebase_auth/zzij;

    move-result-object v9

    if-eqz v9, :cond_4b7

    .line 2633
    invoke-interface {v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzij;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_4b1

    goto :goto_4b7

    .line 2639
    :cond_4b1
    invoke-static {v4, v7, v14, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkz;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_11

    :cond_4b7
    :goto_4b7
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2636
    invoke-static {v2, v4, v5, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JI)V

    .line 2637
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    :pswitch_4c2
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2628
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzo()I

    move-result v7

    invoke-static {v2, v4, v5, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JI)V

    .line 2629
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    :pswitch_4d1
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2623
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzn()Lcom/google/android/gms/internal/firebase_auth/zzgv;

    move-result-object v7

    invoke-static {v2, v4, v5, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2624
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    .line 2602
    :pswitch_4e0
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_4fe

    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2605
    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 2606
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v6

    .line 2607
    invoke-interface {v0, v6, v10}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zza(Lcom/google/android/gms/internal/firebase_auth/zzkd;Lcom/google/android/gms/internal/firebase_auth/zzhs;)Ljava/lang/Object;

    move-result-object v6

    .line 2608
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2611
    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_11

    :cond_4fe
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2616
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v7

    .line 2617
    invoke-interface {v0, v7, v10}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zza(Lcom/google/android/gms/internal/firebase_auth/zzkd;Lcom/google/android/gms/internal/firebase_auth/zzhs;)Ljava/lang/Object;

    move-result-object v7

    .line 2618
    invoke-static {v2, v4, v5, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2619
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    .line 2599
    :pswitch_511
    invoke-direct {v1, v2, v5, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase_auth/zzke;)V

    .line 2600
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    :pswitch_519
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2596
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzk()Z

    move-result v7

    invoke-static {v2, v4, v5, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JZ)V

    .line 2597
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    :pswitch_528
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2591
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzj()I

    move-result v7

    invoke-static {v2, v4, v5, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JI)V

    .line 2592
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    :pswitch_537
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2586
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzi()J

    move-result-wide v7

    invoke-static {v2, v4, v5, v7, v8}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JJ)V

    .line 2587
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    :pswitch_546
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2581
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzh()I

    move-result v7

    invoke-static {v2, v4, v5, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JI)V

    .line 2582
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    :pswitch_555
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2576
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzf()J

    move-result-wide v7

    invoke-static {v2, v4, v5, v7, v8}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JJ)V

    .line 2577
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    :pswitch_564
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2571
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzg()J

    move-result-wide v7

    invoke-static {v2, v4, v5, v7, v8}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JJ)V

    .line 2572
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    :pswitch_573
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2566
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zze()F

    move-result v7

    invoke-static {v2, v4, v5, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JF)V

    .line 2567
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    :pswitch_582
    and-int v4, v5, v8

    int-to-long v4, v4

    .line 2561
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase_auth/zzke;->zzd()D

    move-result-wide v7

    invoke-static {v2, v4, v5, v7, v8}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JD)V

    .line 2562
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_11

    .line 3003
    :cond_591
    :goto_591
    invoke-virtual {v11, v14, v0}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzke;)Z

    move-result v4
    :try_end_595
    .catch Lcom/google/android/gms/internal/firebase_auth/zziq; {:try_start_b7 .. :try_end_595} :catch_5ae
    .catchall {:try_start_b7 .. :try_end_595} :catchall_5d5

    if-nez v4, :cond_11

    .line 3004
    iget v0, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzm:I

    :goto_599
    iget v3, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzn:I

    if-ge v0, v3, :cond_5a8

    .line 3005
    iget-object v3, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzl:[I

    aget v3, v3, v0

    .line 3006
    invoke-direct {v1, v2, v3, v14, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkz;)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v0, v0, 0x1

    goto :goto_599

    :cond_5a8
    if-eqz v14, :cond_5ad

    .line 3009
    invoke-virtual {v11, v2, v14}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5ad
    return-void

    .line 3013
    :catch_5ae
    :try_start_5ae
    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zza(Lcom/google/android/gms/internal/firebase_auth/zzke;)Z

    if-nez v14, :cond_5b8

    .line 3015
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    .line 3016
    :cond_5b8
    invoke-virtual {v11, v14, v0}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzke;)Z

    move-result v4
    :try_end_5bc
    .catchall {:try_start_5ae .. :try_end_5bc} :catchall_5d5

    if-nez v4, :cond_11

    .line 3017
    iget v0, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzm:I

    :goto_5c0
    iget v3, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzn:I

    if-ge v0, v3, :cond_5cf

    .line 3018
    iget-object v3, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzl:[I

    aget v3, v3, v0

    .line 3019
    invoke-direct {v1, v2, v3, v14, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkz;)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v0, v0, 0x1

    goto :goto_5c0

    :cond_5cf
    if-eqz v14, :cond_5d4

    .line 3022
    invoke-virtual {v11, v2, v14}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5d4
    return-void

    :catchall_5d5
    move-exception v0

    .line 3025
    iget v3, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzm:I

    :goto_5d8
    iget v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzn:I

    if-ge v3, v4, :cond_5e7

    .line 3026
    iget-object v4, v1, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzl:[I

    aget v4, v4, v3

    .line 3027
    invoke-direct {v1, v2, v4, v14, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkz;)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_5d8

    :cond_5e7
    if-eqz v14, :cond_5ec

    .line 3030
    invoke-virtual {v11, v2, v14}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3031
    :cond_5ec
    throw v0

    .line 2501
    :cond_5ed
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    return-void

    :pswitch_data_5f4
    .packed-switch 0x0
        :pswitch_582
        :pswitch_573
        :pswitch_564
        :pswitch_555
        :pswitch_546
        :pswitch_537
        :pswitch_528
        :pswitch_519
        :pswitch_511
        :pswitch_4e0
        :pswitch_4d1
        :pswitch_4c2
        :pswitch_4a0
        :pswitch_491
        :pswitch_482
        :pswitch_473
        :pswitch_464
        :pswitch_433
        :pswitch_426
        :pswitch_419
        :pswitch_40c
        :pswitch_3ff
        :pswitch_3f2
        :pswitch_3e5
        :pswitch_3d8
        :pswitch_3cb
        :pswitch_3ab
        :pswitch_39a
        :pswitch_38d
        :pswitch_380
        :pswitch_36b
        :pswitch_35e
        :pswitch_351
        :pswitch_344
        :pswitch_337
        :pswitch_32a
        :pswitch_31d
        :pswitch_310
        :pswitch_303
        :pswitch_2f6
        :pswitch_2e9
        :pswitch_2dc
        :pswitch_2cf
        :pswitch_2c2
        :pswitch_2ad
        :pswitch_2a0
        :pswitch_293
        :pswitch_286
        :pswitch_279
        :pswitch_267
        :pswitch_225
        :pswitch_213
        :pswitch_201
        :pswitch_1ef
        :pswitch_1dd
        :pswitch_1cb
        :pswitch_1b9
        :pswitch_1a7
        :pswitch_195
        :pswitch_18d
        :pswitch_15c
        :pswitch_14e
        :pswitch_13c
        :pswitch_117
        :pswitch_105
        :pswitch_f3
        :pswitch_e1
        :pswitch_cf
        :pswitch_bd
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/firebase_auth/zzls;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1219
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zzk:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_529

    .line 1221
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    .line 1224
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzh:Z

    if-eqz v0, :cond_32

    .line 1225
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object v0

    .line 1227
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->zza:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 1229
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->zze()Ljava/util/Iterator;

    move-result-object v0

    .line 1230
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_34

    :cond_32
    move-object v0, v3

    move-object v1, v0

    .line 1231
    :goto_34
    iget-object v7, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_39
    if-ltz v7, :cond_511

    .line 1232
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(I)I

    move-result v8

    .line 1234
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    :goto_43
    if-eqz v1, :cond_61

    .line 1236
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_61

    .line 1237
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Lcom/google/android/gms/internal/firebase_auth/zzls;Ljava/util/Map$Entry;)V

    .line 1238
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_43

    :cond_5f
    move-object v1, v3

    goto :goto_43

    :cond_61
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_a4a

    goto/16 :goto_50d

    .line 1680
    :pswitch_6a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1683
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1684
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v10

    .line 1685
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_50d

    .line 1676
    :pswitch_7f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1679
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zze(IJ)V

    goto/16 :goto_50d

    .line 1672
    :pswitch_90
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1675
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzf(II)V

    goto/16 :goto_50d

    .line 1668
    :pswitch_a1
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1671
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(IJ)V

    goto/16 :goto_50d

    .line 1664
    :pswitch_b2
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1667
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(II)V

    goto/16 :goto_50d

    .line 1660
    :pswitch_c3
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1663
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(II)V

    goto/16 :goto_50d

    .line 1656
    :pswitch_d4
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1659
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zze(II)V

    goto/16 :goto_50d

    .line 1651
    :pswitch_e5
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1654
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 1655
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    goto/16 :goto_50d

    .line 1645
    :pswitch_f8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1648
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1649
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_50d

    .line 1641
    :pswitch_10d
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1644
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_50d

    .line 1637
    :pswitch_11e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1640
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzf(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IZ)V

    goto/16 :goto_50d

    .line 1633
    :pswitch_12f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1636
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzd(II)V

    goto/16 :goto_50d

    .line 1629
    :pswitch_140
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1632
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzd(IJ)V

    goto/16 :goto_50d

    .line 1625
    :pswitch_151
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1628
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzc(II)V

    goto/16 :goto_50d

    .line 1621
    :pswitch_162
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1624
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzc(IJ)V

    goto/16 :goto_50d

    .line 1617
    :pswitch_173
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1620
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IJ)V

    goto/16 :goto_50d

    .line 1613
    :pswitch_184
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1616
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IF)V

    goto/16 :goto_50d

    .line 1609
    :pswitch_195
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1612
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ID)V

    goto/16 :goto_50d

    :pswitch_1a6
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1607
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Lcom/google/android/gms/internal/firebase_auth/zzls;ILjava/lang/Object;I)V

    goto/16 :goto_50d

    .line 1598
    :pswitch_1b1
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1601
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1602
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v10

    .line 1603
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_50d

    .line 1590
    :pswitch_1c6
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1593
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1594
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zze(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1582
    :pswitch_1d7
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1585
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1586
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1574
    :pswitch_1e8
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1577
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1578
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1566
    :pswitch_1f9
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1569
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1570
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1558
    :pswitch_20a
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1561
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1562
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1550
    :pswitch_21b
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1553
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1554
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1542
    :pswitch_22c
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1545
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1546
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1534
    :pswitch_23d
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1537
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1538
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1526
    :pswitch_24e
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1529
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1530
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1518
    :pswitch_25f
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1521
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1522
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1510
    :pswitch_270
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1513
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1514
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1502
    :pswitch_281
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1505
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1506
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1494
    :pswitch_292
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1497
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1498
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1486
    :pswitch_2a3
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1489
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1490
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1478
    :pswitch_2b4
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1481
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1482
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zze(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1470
    :pswitch_2c5
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1473
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1474
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1462
    :pswitch_2d6
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1465
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1466
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1454
    :pswitch_2e7
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1457
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1458
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1446
    :pswitch_2f8
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1449
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1450
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1438
    :pswitch_309
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1441
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1442
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1430
    :pswitch_31a
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1433
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1434
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_50d

    .line 1421
    :pswitch_32b
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1424
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1425
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v10

    .line 1426
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_50d

    .line 1413
    :pswitch_340
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1416
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1417
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_50d

    .line 1405
    :pswitch_351
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1408
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1409
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1397
    :pswitch_362
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1400
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1401
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1389
    :pswitch_373
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1392
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1393
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1381
    :pswitch_384
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1384
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1385
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1373
    :pswitch_395
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1376
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1377
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1365
    :pswitch_3a6
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1368
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1369
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1357
    :pswitch_3b7
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1360
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1361
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1349
    :pswitch_3c8
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1352
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1353
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 1341
    :pswitch_3d9
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1344
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1345
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v10

    .line 1346
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_50d

    .line 1335
    :pswitch_3ee
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1339
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1340
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zze(IJ)V

    goto/16 :goto_50d

    .line 1329
    :pswitch_3ff
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1333
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1334
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzf(II)V

    goto/16 :goto_50d

    .line 1323
    :pswitch_410
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1327
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1328
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(IJ)V

    goto/16 :goto_50d

    .line 1317
    :pswitch_421
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1321
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1322
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(II)V

    goto/16 :goto_50d

    .line 1311
    :pswitch_432
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1315
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1316
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(II)V

    goto/16 :goto_50d

    .line 1305
    :pswitch_443
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1309
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1310
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zze(II)V

    goto/16 :goto_50d

    .line 1300
    :pswitch_454
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1303
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 1304
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    goto/16 :goto_50d

    .line 1294
    :pswitch_467
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1297
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1298
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_50d

    .line 1290
    :pswitch_47c
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1293
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_50d

    .line 1284
    :pswitch_48d
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1288
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzc(Ljava/lang/Object;J)Z

    move-result v8

    .line 1289
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IZ)V

    goto/16 :goto_50d

    .line 1278
    :pswitch_49e
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1282
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1283
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzd(II)V

    goto :goto_50d

    .line 1272
    :pswitch_4ae
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1276
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1277
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzd(IJ)V

    goto :goto_50d

    .line 1266
    :pswitch_4be
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1270
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1271
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzc(II)V

    goto :goto_50d

    .line 1260
    :pswitch_4ce
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1264
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1265
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzc(IJ)V

    goto :goto_50d

    .line 1254
    :pswitch_4de
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1258
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1259
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IJ)V

    goto :goto_50d

    .line 1248
    :pswitch_4ee
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1252
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzd(Ljava/lang/Object;J)F

    move-result v8

    .line 1253
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IF)V

    goto :goto_50d

    .line 1242
    :pswitch_4fe
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1246
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zze(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 1247
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ID)V

    :cond_50d
    :goto_50d
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_39

    :cond_511
    :goto_511
    if-eqz v1, :cond_528

    .line 1688
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Lcom/google/android/gms/internal/firebase_auth/zzls;Ljava/util/Map$Entry;)V

    .line 1689
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_526

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_511

    :cond_526
    move-object v1, v3

    goto :goto_511

    :cond_528
    return-void

    .line 1691
    :cond_529
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzj:Z

    if-eqz v0, :cond_a46

    .line 1695
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzh:Z

    if-eqz v0, :cond_54a

    .line 1696
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object v0

    .line 1698
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->zza:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54a

    .line 1700
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->zzd()Ljava/util/Iterator;

    move-result-object v0

    .line 1701
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_54c

    :cond_54a
    move-object v0, v3

    move-object v1, v0

    .line 1702
    :goto_54c
    iget-object v7, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    array-length v7, v7

    move-object v8, v1

    const/4 v1, 0x0

    :goto_551
    if-ge v1, v7, :cond_a29

    .line 1704
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(I)I

    move-result v9

    .line 1706
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    :goto_55b
    if-eqz v8, :cond_579

    .line 1708
    iget-object v11, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_579

    .line 1709
    iget-object v11, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v11, p2, v8}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Lcom/google/android/gms/internal/firebase_auth/zzls;Ljava/util/Map$Entry;)V

    .line 1710
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_577

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    goto :goto_55b

    :cond_577
    move-object v8, v3

    goto :goto_55b

    :cond_579
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_ad8

    goto/16 :goto_a25

    .line 2152
    :pswitch_582
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2155
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2156
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v11

    .line 2157
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_a25

    .line 2148
    :pswitch_597
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2151
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zze(IJ)V

    goto/16 :goto_a25

    .line 2144
    :pswitch_5a8
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2147
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzf(II)V

    goto/16 :goto_a25

    .line 2140
    :pswitch_5b9
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2143
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(IJ)V

    goto/16 :goto_a25

    .line 2136
    :pswitch_5ca
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2139
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(II)V

    goto/16 :goto_a25

    .line 2132
    :pswitch_5db
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2135
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(II)V

    goto/16 :goto_a25

    .line 2128
    :pswitch_5ec
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2131
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zze(II)V

    goto/16 :goto_a25

    .line 2123
    :pswitch_5fd
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2126
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 2127
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    goto/16 :goto_a25

    .line 2117
    :pswitch_610
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2120
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2121
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_a25

    .line 2113
    :pswitch_625
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2116
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_a25

    .line 2109
    :pswitch_636
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2112
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzf(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IZ)V

    goto/16 :goto_a25

    .line 2105
    :pswitch_647
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2108
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzd(II)V

    goto/16 :goto_a25

    .line 2101
    :pswitch_658
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2104
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzd(IJ)V

    goto/16 :goto_a25

    .line 2097
    :pswitch_669
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2100
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzc(II)V

    goto/16 :goto_a25

    .line 2093
    :pswitch_67a
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2096
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzc(IJ)V

    goto/16 :goto_a25

    .line 2089
    :pswitch_68b
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2092
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IJ)V

    goto/16 :goto_a25

    .line 2085
    :pswitch_69c
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2088
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IF)V

    goto/16 :goto_a25

    .line 2081
    :pswitch_6ad
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2084
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ID)V

    goto/16 :goto_a25

    :pswitch_6be
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2079
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Lcom/google/android/gms/internal/firebase_auth/zzls;ILjava/lang/Object;I)V

    goto/16 :goto_a25

    .line 2070
    :pswitch_6c9
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2073
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2074
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v11

    .line 2075
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_a25

    .line 2062
    :pswitch_6de
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2065
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2066
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zze(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 2054
    :pswitch_6ef
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2057
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2058
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 2046
    :pswitch_700
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2049
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2050
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 2038
    :pswitch_711
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2041
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2042
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 2030
    :pswitch_722
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2033
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2034
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 2022
    :pswitch_733
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2025
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2026
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 2014
    :pswitch_744
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2017
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2018
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 2006
    :pswitch_755
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2009
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2010
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1998
    :pswitch_766
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2001
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2002
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1990
    :pswitch_777
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1993
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1994
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1982
    :pswitch_788
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1985
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1986
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1974
    :pswitch_799
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1977
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1978
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1966
    :pswitch_7aa
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1969
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1970
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1958
    :pswitch_7bb
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1961
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1962
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1950
    :pswitch_7cc
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1953
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1954
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zze(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1942
    :pswitch_7dd
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1945
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1946
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1934
    :pswitch_7ee
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1937
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1938
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1926
    :pswitch_7ff
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1929
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1930
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1918
    :pswitch_810
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1921
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1922
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1910
    :pswitch_821
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1913
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1914
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1902
    :pswitch_832
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1905
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1906
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_a25

    .line 1893
    :pswitch_843
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1896
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1897
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v11

    .line 1898
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_a25

    .line 1885
    :pswitch_858
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1888
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1889
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_a25

    .line 1877
    :pswitch_869
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1880
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1881
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1869
    :pswitch_87a
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1872
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1873
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1861
    :pswitch_88b
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1864
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1865
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1853
    :pswitch_89c
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1856
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1857
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1845
    :pswitch_8ad
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1848
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1849
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1837
    :pswitch_8be
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1840
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1841
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1829
    :pswitch_8cf
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1832
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1833
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1821
    :pswitch_8e0
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1824
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1825
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a25

    .line 1813
    :pswitch_8f1
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1816
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1817
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v11

    .line 1818
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_a25

    .line 1807
    :pswitch_906
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1811
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1812
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zze(IJ)V

    goto/16 :goto_a25

    .line 1801
    :pswitch_917
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1805
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1806
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzf(II)V

    goto/16 :goto_a25

    .line 1795
    :pswitch_928
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1799
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1800
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(IJ)V

    goto/16 :goto_a25

    .line 1789
    :pswitch_939
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1793
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1794
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(II)V

    goto/16 :goto_a25

    .line 1783
    :pswitch_94a
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1787
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1788
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzb(II)V

    goto/16 :goto_a25

    .line 1777
    :pswitch_95b
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1781
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1782
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zze(II)V

    goto/16 :goto_a25

    .line 1772
    :pswitch_96c
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1775
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 1776
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    goto/16 :goto_a25

    .line 1766
    :pswitch_97f
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1769
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1770
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_a25

    .line 1762
    :pswitch_994
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1765
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_a25

    .line 1756
    :pswitch_9a5
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1760
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzc(Ljava/lang/Object;J)Z

    move-result v9

    .line 1761
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IZ)V

    goto/16 :goto_a25

    .line 1750
    :pswitch_9b6
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1754
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1755
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzd(II)V

    goto :goto_a25

    .line 1744
    :pswitch_9c6
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1748
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1749
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzd(IJ)V

    goto :goto_a25

    .line 1738
    :pswitch_9d6
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1742
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1743
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzc(II)V

    goto :goto_a25

    .line 1732
    :pswitch_9e6
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1736
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1737
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zzc(IJ)V

    goto :goto_a25

    .line 1726
    :pswitch_9f6
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1730
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1731
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IJ)V

    goto :goto_a25

    .line 1720
    :pswitch_a06
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1724
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzd(Ljava/lang/Object;J)F

    move-result v9

    .line 1725
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(IF)V

    goto :goto_a25

    .line 1714
    :pswitch_a16
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1718
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zze(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 1719
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza(ID)V

    :cond_a25
    :goto_a25
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_551

    :cond_a29
    :goto_a29
    if-eqz v8, :cond_a40

    .line 2160
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v1, p2, v8}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Lcom/google/android/gms/internal/firebase_auth/zzls;Ljava/util/Map$Entry;)V

    .line 2161
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v8, v1

    goto :goto_a29

    :cond_a3e
    move-object v8, v3

    goto :goto_a29

    .line 2162
    :cond_a40
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    return-void

    .line 2164
    :cond_a46
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    return-void

    :pswitch_data_a4a
    .packed-switch 0x0
        :pswitch_4fe
        :pswitch_4ee
        :pswitch_4de
        :pswitch_4ce
        :pswitch_4be
        :pswitch_4ae
        :pswitch_49e
        :pswitch_48d
        :pswitch_47c
        :pswitch_467
        :pswitch_454
        :pswitch_443
        :pswitch_432
        :pswitch_421
        :pswitch_410
        :pswitch_3ff
        :pswitch_3ee
        :pswitch_3d9
        :pswitch_3c8
        :pswitch_3b7
        :pswitch_3a6
        :pswitch_395
        :pswitch_384
        :pswitch_373
        :pswitch_362
        :pswitch_351
        :pswitch_340
        :pswitch_32b
        :pswitch_31a
        :pswitch_309
        :pswitch_2f8
        :pswitch_2e7
        :pswitch_2d6
        :pswitch_2c5
        :pswitch_2b4
        :pswitch_2a3
        :pswitch_292
        :pswitch_281
        :pswitch_270
        :pswitch_25f
        :pswitch_24e
        :pswitch_23d
        :pswitch_22c
        :pswitch_21b
        :pswitch_20a
        :pswitch_1f9
        :pswitch_1e8
        :pswitch_1d7
        :pswitch_1c6
        :pswitch_1b1
        :pswitch_1a6
        :pswitch_195
        :pswitch_184
        :pswitch_173
        :pswitch_162
        :pswitch_151
        :pswitch_140
        :pswitch_12f
        :pswitch_11e
        :pswitch_10d
        :pswitch_f8
        :pswitch_e5
        :pswitch_d4
        :pswitch_c3
        :pswitch_b2
        :pswitch_a1
        :pswitch_90
        :pswitch_7f
        :pswitch_6a
    .end packed-switch

    :pswitch_data_ad8
    .packed-switch 0x0
        :pswitch_a16
        :pswitch_a06
        :pswitch_9f6
        :pswitch_9e6
        :pswitch_9d6
        :pswitch_9c6
        :pswitch_9b6
        :pswitch_9a5
        :pswitch_994
        :pswitch_97f
        :pswitch_96c
        :pswitch_95b
        :pswitch_94a
        :pswitch_939
        :pswitch_928
        :pswitch_917
        :pswitch_906
        :pswitch_8f1
        :pswitch_8e0
        :pswitch_8cf
        :pswitch_8be
        :pswitch_8ad
        :pswitch_89c
        :pswitch_88b
        :pswitch_87a
        :pswitch_869
        :pswitch_858
        :pswitch_843
        :pswitch_832
        :pswitch_821
        :pswitch_810
        :pswitch_7ff
        :pswitch_7ee
        :pswitch_7dd
        :pswitch_7cc
        :pswitch_7bb
        :pswitch_7aa
        :pswitch_799
        :pswitch_788
        :pswitch_777
        :pswitch_766
        :pswitch_755
        :pswitch_744
        :pswitch_733
        :pswitch_722
        :pswitch_711
        :pswitch_700
        :pswitch_6ef
        :pswitch_6de
        :pswitch_6c9
        :pswitch_6be
        :pswitch_6ad
        :pswitch_69c
        :pswitch_68b
        :pswitch_67a
        :pswitch_669
        :pswitch_658
        :pswitch_647
        :pswitch_636
        :pswitch_625
        :pswitch_610
        :pswitch_5fd
        :pswitch_5ec
        :pswitch_5db
        :pswitch_5ca
        :pswitch_5b9
        :pswitch_5a8
        :pswitch_597
        :pswitch_582
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1c9

    .line 252
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_1f2

    goto/16 :goto_1c2

    .line 326
    :pswitch_1c
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 327
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 328
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_1c1

    .line 330
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 331
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 323
    :pswitch_3c
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 324
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1c2

    .line 320
    :pswitch_4a
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 321
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1c2

    .line 315
    :pswitch_58
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 316
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 317
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 312
    :pswitch_6e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 313
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto/16 :goto_1c1

    .line 309
    :pswitch_82
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 310
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 306
    :pswitch_94
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 307
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto/16 :goto_1c1

    .line 303
    :pswitch_a8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 304
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 300
    :pswitch_ba
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 301
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 297
    :pswitch_cc
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 298
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 293
    :pswitch_de
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 294
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 295
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 289
    :pswitch_f4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 290
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 291
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 285
    :pswitch_10a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 286
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 287
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 282
    :pswitch_120
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 283
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzc(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzc(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 279
    :pswitch_132
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 280
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 276
    :pswitch_144
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 277
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto :goto_1c1

    .line 273
    :pswitch_157
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 274
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto :goto_1c1

    .line 270
    :pswitch_168
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 271
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto :goto_1c1

    .line 267
    :pswitch_17b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 268
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto :goto_1c1

    .line 263
    :pswitch_18e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 264
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzd(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 265
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzd(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto :goto_1c1

    .line 259
    :pswitch_1a7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 260
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zze(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 261
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zze(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    :cond_1c1
    :goto_1c1
    const/4 v3, 0x0

    :cond_1c2
    :goto_1c2
    if-nez v3, :cond_1c5

    return v1

    :cond_1c5
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_5

    .line 337
    :cond_1c9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dc

    return v1

    .line 341
    :cond_1dc
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzh:Z

    if-eqz v0, :cond_1f1

    .line 342
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p1

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p2

    .line 344
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1f1
    return v3

    :pswitch_data_1f2
    .packed-switch 0x0
        :pswitch_1a7
        :pswitch_18e
        :pswitch_17b
        :pswitch_168
        :pswitch_157
        :pswitch_144
        :pswitch_132
        :pswitch_120
        :pswitch_10a
        :pswitch_f4
        :pswitch_de
        :pswitch_cc
        :pswitch_ba
        :pswitch_a8
        :pswitch_94
        :pswitch_82
        :pswitch_6e
        :pswitch_58
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_3c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 573
    iget-boolean v2, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzj:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const/4 v7, 0x1

    const v8, 0xfffff

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_4f2

    .line 574
    sget-object v2, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 576
    :goto_16
    iget-object v14, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    array-length v14, v14

    if-ge v12, v14, :cond_4ea

    .line 577
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    .line 582
    iget-object v3, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v3, v3, v12

    and-int/2addr v14, v8

    int-to-long v5, v14

    .line 587
    sget-object v14, Lcom/google/android/gms/internal/firebase_auth/zzia;->zza:Lcom/google/android/gms/internal/firebase_auth/zzia;

    .line 588
    invoke-virtual {v14}, Lcom/google/android/gms/internal/firebase_auth/zzia;->zza()I

    move-result v14

    if-lt v15, v14, :cond_41

    sget-object v14, Lcom/google/android/gms/internal/firebase_auth/zzia;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzia;

    .line 589
    invoke-virtual {v14}, Lcom/google/android/gms/internal/firebase_auth/zzia;->zza()I

    move-result v14

    if-gt v15, v14, :cond_41

    .line 590
    iget-object v14, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v8

    goto :goto_42

    :cond_41
    const/4 v14, 0x0

    :goto_42
    packed-switch v15, :pswitch_data_a86

    goto/16 :goto_4e4

    .line 867
    :pswitch_47
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 869
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 870
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v6

    .line 871
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzc(ILcom/google/android/gms/internal/firebase_auth/zzjn;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v3

    goto/16 :goto_3c9

    .line 865
    :pswitch_5d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 866
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzf(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 863
    :pswitch_6d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 864
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzh(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 861
    :pswitch_7d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 862
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzh(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 859
    :pswitch_89
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 860
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzj(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 857
    :pswitch_95
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 858
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzk(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 855
    :pswitch_a5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 856
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 851
    :pswitch_b5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 853
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 854
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzc(ILcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result v3

    goto/16 :goto_3c9

    .line 847
    :pswitch_c7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 848
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 849
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v3

    goto/16 :goto_3c9

    .line 841
    :pswitch_db
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 842
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 843
    instance-of v6, v5, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz v6, :cond_f1

    .line 844
    check-cast v5, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzc(ILcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result v3

    goto/16 :goto_3c9

    .line 845
    :cond_f1
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzb(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3c9

    .line 839
    :pswitch_f9
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 840
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzb(IZ)I

    move-result v3

    goto/16 :goto_3c9

    .line 837
    :pswitch_105
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 838
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzi(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 835
    :pswitch_111
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 836
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 833
    :pswitch_11d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 834
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzf(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 831
    :pswitch_12d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 832
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 829
    :pswitch_13d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 830
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzd(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 827
    :pswitch_14d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 828
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzb(IF)I

    move-result v3

    goto/16 :goto_3c9

    .line 825
    :pswitch_159
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    const-wide/16 v5, 0x0

    .line 826
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzb(ID)I

    move-result v3

    goto/16 :goto_3c9

    .line 821
    :pswitch_167
    iget-object v14, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    .line 822
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(I)Ljava/lang/Object;

    move-result-object v6

    .line 823
    invoke-interface {v14, v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_3c9

    .line 818
    :pswitch_177
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v6

    .line 819
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v3

    goto/16 :goto_3c9

    .line 809
    :pswitch_185
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 810
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzc(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 812
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v6, :cond_199

    int-to-long v14, v14

    .line 813
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 815
    :cond_199
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v3

    .line 816
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v6

    goto/16 :goto_324

    .line 800
    :pswitch_1a3
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 801
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzg(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 803
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v6, :cond_1b7

    int-to-long v14, v14

    .line 804
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 806
    :cond_1b7
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v3

    .line 807
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v6

    goto/16 :goto_324

    .line 791
    :pswitch_1c1
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 792
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 794
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v6, :cond_1d5

    int-to-long v14, v14

    .line 795
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 797
    :cond_1d5
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v3

    .line 798
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v6

    goto/16 :goto_324

    .line 782
    :pswitch_1df
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 783
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 785
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v6, :cond_1f3

    int-to-long v14, v14

    .line 786
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 788
    :cond_1f3
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v3

    .line 789
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v6

    goto/16 :goto_324

    .line 773
    :pswitch_1fd
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 774
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzd(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 776
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v6, :cond_211

    int-to-long v14, v14

    .line 777
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 779
    :cond_211
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v3

    .line 780
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v6

    goto/16 :goto_324

    .line 764
    :pswitch_21b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 765
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzf(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 767
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v6, :cond_22f

    int-to-long v14, v14

    .line 768
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 770
    :cond_22f
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v3

    .line 771
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v6

    goto/16 :goto_324

    .line 755
    :pswitch_239
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 756
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzj(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 758
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v6, :cond_24d

    int-to-long v14, v14

    .line 759
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 761
    :cond_24d
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v3

    .line 762
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v6

    goto/16 :goto_324

    .line 746
    :pswitch_257
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 747
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 749
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v6, :cond_26b

    int-to-long v14, v14

    .line 750
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 752
    :cond_26b
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v3

    .line 753
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v6

    goto/16 :goto_324

    .line 737
    :pswitch_275
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 738
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 740
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v6, :cond_289

    int-to-long v14, v14

    .line 741
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 743
    :cond_289
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v3

    .line 744
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v6

    goto/16 :goto_324

    .line 728
    :pswitch_293
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 729
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zze(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 731
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v6, :cond_2a7

    int-to-long v14, v14

    .line 732
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 734
    :cond_2a7
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v3

    .line 735
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v6

    goto/16 :goto_324

    .line 719
    :pswitch_2b1
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 720
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 722
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v6, :cond_2c5

    int-to-long v14, v14

    .line 723
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 725
    :cond_2c5
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v3

    .line 726
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v6

    goto :goto_324

    .line 710
    :pswitch_2ce
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 711
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 713
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v6, :cond_2e2

    int-to-long v14, v14

    .line 714
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 716
    :cond_2e2
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v3

    .line 717
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v6

    goto :goto_324

    .line 701
    :pswitch_2eb
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 702
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 704
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v6, :cond_2ff

    int-to-long v14, v14

    .line 705
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 707
    :cond_2ff
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v3

    .line 708
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v6

    goto :goto_324

    .line 692
    :pswitch_308
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 693
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 695
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v6, :cond_31c

    int-to-long v14, v14

    .line 696
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 698
    :cond_31c
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v3

    .line 699
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v6

    :goto_324
    add-int/2addr v3, v6

    add-int/2addr v3, v5

    goto/16 :goto_3c9

    .line 689
    :pswitch_328
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzc(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 685
    :pswitch_332
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 686
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzg(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 682
    :pswitch_33c
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 680
    :pswitch_346
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 677
    :pswitch_350
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 678
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzd(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 673
    :pswitch_35a
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 674
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzf(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 669
    :pswitch_363
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 670
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;)I

    move-result v3

    goto :goto_3c9

    .line 665
    :pswitch_36c
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v6

    .line 666
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v3

    goto :goto_3c9

    .line 662
    :pswitch_379
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;)I

    move-result v3

    goto :goto_3c9

    .line 660
    :pswitch_382
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzj(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 658
    :pswitch_38b
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 656
    :pswitch_394
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 653
    :pswitch_39d
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 654
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zze(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 650
    :pswitch_3a6
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 647
    :pswitch_3af
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 644
    :pswitch_3b8
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 642
    :pswitch_3c1
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(ILjava/util/List;Z)I

    move-result v3

    :goto_3c9
    add-int/2addr v13, v3

    goto/16 :goto_4e4

    .line 637
    :pswitch_3cc
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 639
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 640
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v6

    .line 641
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzc(ILcom/google/android/gms/internal/firebase_auth/zzjn;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v3

    goto :goto_3c9

    .line 634
    :pswitch_3e1
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 636
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzf(IJ)I

    move-result v3

    goto :goto_3c9

    .line 632
    :pswitch_3f0
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 633
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzh(II)I

    move-result v3

    goto :goto_3c9

    .line 630
    :pswitch_3ff
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 631
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzh(IJ)I

    move-result v3

    goto :goto_3c9

    .line 628
    :pswitch_40a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 629
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzj(II)I

    move-result v3

    goto :goto_3c9

    .line 626
    :pswitch_415
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 627
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzk(II)I

    move-result v3

    goto :goto_3c9

    .line 624
    :pswitch_424
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 625
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(II)I

    move-result v3

    goto :goto_3c9

    .line 620
    :pswitch_433
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 621
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 622
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzc(ILcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result v3

    goto :goto_3c9

    .line 616
    :pswitch_444
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 617
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 618
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v3

    goto/16 :goto_3c9

    .line 610
    :pswitch_458
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 611
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 612
    instance-of v6, v5, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz v6, :cond_46e

    .line 613
    check-cast v5, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzc(ILcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result v3

    goto/16 :goto_3c9

    .line 614
    :cond_46e
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzb(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3c9

    .line 608
    :pswitch_476
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 609
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzb(IZ)I

    move-result v3

    goto/16 :goto_3c9

    .line 606
    :pswitch_482
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 607
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzi(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 604
    :pswitch_48e
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 605
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 602
    :pswitch_49a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 603
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzf(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 599
    :pswitch_4aa
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 601
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 597
    :pswitch_4ba
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 598
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzd(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 595
    :pswitch_4ca
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 596
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzb(IF)I

    move-result v3

    goto/16 :goto_3c9

    .line 593
    :pswitch_4d6
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    const-wide/16 v5, 0x0

    .line 594
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzb(ID)I

    move-result v3

    goto/16 :goto_3c9

    :cond_4e4
    :goto_4e4
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_16

    .line 873
    :cond_4ea
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    .line 876
    :cond_4f2
    sget-object v2, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    const/4 v12, 0x0

    .line 879
    :goto_4fa
    iget-object v13, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    array-length v13, v13

    if-ge v3, v13, :cond_a2b

    .line 880
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(I)I

    move-result v13

    .line 882
    iget-object v14, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v15, v14, v3

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v4, v17, 0x14

    const/16 v11, 0x11

    if-gt v4, v11, :cond_526

    add-int/lit8 v11, v3, 0x2

    .line 890
    aget v11, v14, v11

    and-int v14, v11, v8

    ushr-int/lit8 v18, v11, 0x14

    shl-int v18, v7, v18

    if-eq v14, v6, :cond_523

    int-to-long v9, v14

    .line 895
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    goto :goto_524

    :cond_523
    move v14, v6

    :goto_524
    move v6, v14

    goto :goto_546

    .line 896
    :cond_526
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v9, :cond_543

    sget-object v9, Lcom/google/android/gms/internal/firebase_auth/zzia;->zza:Lcom/google/android/gms/internal/firebase_auth/zzia;

    .line 897
    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase_auth/zzia;->zza()I

    move-result v9

    if-lt v4, v9, :cond_543

    sget-object v9, Lcom/google/android/gms/internal/firebase_auth/zzia;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzia;

    .line 898
    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase_auth/zzia;->zza()I

    move-result v9

    if-gt v4, v9, :cond_543

    .line 899
    iget-object v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    add-int/lit8 v10, v3, 0x2

    aget v9, v9, v10

    and-int v11, v9, v8

    goto :goto_544

    :cond_543
    const/4 v11, 0x0

    :goto_544
    const/16 v18, 0x0

    :goto_546
    and-int v9, v13, v8

    int-to-long v9, v9

    packed-switch v4, :pswitch_data_b14

    goto/16 :goto_90c

    .line 1195
    :pswitch_54e
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    .line 1197
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 1198
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v9

    .line 1199
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzc(ILcom/google/android/gms/internal/firebase_auth/zzjn;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v4

    goto/16 :goto_90b

    .line 1193
    :pswitch_564
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    .line 1194
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzf(IJ)I

    move-result v4

    goto/16 :goto_90b

    .line 1191
    :pswitch_574
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    .line 1192
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzh(II)I

    move-result v4

    goto/16 :goto_90b

    .line 1189
    :pswitch_584
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    const-wide/16 v9, 0x0

    .line 1190
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzh(IJ)I

    move-result v4

    goto/16 :goto_90b

    .line 1187
    :pswitch_592
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    const/4 v4, 0x0

    .line 1188
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzj(II)I

    move-result v9

    goto/16 :goto_955

    .line 1185
    :pswitch_59f
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    .line 1186
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzk(II)I

    move-result v4

    goto/16 :goto_90b

    .line 1183
    :pswitch_5af
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    .line 1184
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(II)I

    move-result v4

    goto/16 :goto_90b

    .line 1179
    :pswitch_5bf
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    .line 1181
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 1182
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzc(ILcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result v4

    goto/16 :goto_90b

    .line 1175
    :pswitch_5d1
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    .line 1176
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1177
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v9

    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v4

    goto/16 :goto_90b

    .line 1169
    :pswitch_5e5
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    .line 1170
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1171
    instance-of v9, v4, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz v9, :cond_5fb

    .line 1172
    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzc(ILcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result v4

    goto/16 :goto_90b

    .line 1173
    :cond_5fb
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzb(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_90b

    .line 1167
    :pswitch_603
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    .line 1168
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzb(IZ)I

    move-result v4

    goto/16 :goto_90b

    .line 1165
    :pswitch_60f
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    const/4 v4, 0x0

    .line 1166
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzi(II)I

    move-result v9

    goto/16 :goto_955

    .line 1163
    :pswitch_61c
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    const-wide/16 v9, 0x0

    .line 1164
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(IJ)I

    move-result v4

    goto/16 :goto_90b

    .line 1161
    :pswitch_62a
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    .line 1162
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzf(II)I

    move-result v4

    goto/16 :goto_90b

    .line 1159
    :pswitch_63a
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    .line 1160
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(IJ)I

    move-result v4

    goto/16 :goto_90b

    .line 1157
    :pswitch_64a
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    .line 1158
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zze(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzd(IJ)I

    move-result v4

    goto/16 :goto_90b

    .line 1155
    :pswitch_65a
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    const/4 v4, 0x0

    .line 1156
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzb(IF)I

    move-result v9

    goto/16 :goto_955

    .line 1153
    :pswitch_667
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90c

    const-wide/16 v9, 0x0

    .line 1154
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzb(ID)I

    move-result v4

    goto/16 :goto_90b

    .line 1149
    :pswitch_675
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    .line 1150
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(I)Ljava/lang/Object;

    move-result-object v10

    .line 1151
    invoke-interface {v4, v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_90b

    .line 1145
    :pswitch_685
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1146
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v9

    .line 1147
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v4

    goto/16 :goto_90b

    .line 1136
    :pswitch_695
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1137
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzc(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90c

    .line 1139
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v9, :cond_6a9

    int-to-long v9, v11

    .line 1140
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1142
    :cond_6a9
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v9

    .line 1143
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v10

    goto/16 :goto_834

    .line 1127
    :pswitch_6b3
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1128
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzg(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90c

    .line 1130
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v9, :cond_6c7

    int-to-long v9, v11

    .line 1131
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1133
    :cond_6c7
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v9

    .line 1134
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v10

    goto/16 :goto_834

    .line 1118
    :pswitch_6d1
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1119
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90c

    .line 1121
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v9, :cond_6e5

    int-to-long v9, v11

    .line 1122
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1124
    :cond_6e5
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v9

    .line 1125
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v10

    goto/16 :goto_834

    .line 1109
    :pswitch_6ef
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1110
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90c

    .line 1112
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v9, :cond_703

    int-to-long v9, v11

    .line 1113
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1115
    :cond_703
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v9

    .line 1116
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v10

    goto/16 :goto_834

    .line 1100
    :pswitch_70d
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1101
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzd(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90c

    .line 1103
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v9, :cond_721

    int-to-long v9, v11

    .line 1104
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1106
    :cond_721
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v9

    .line 1107
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v10

    goto/16 :goto_834

    .line 1091
    :pswitch_72b
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1092
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90c

    .line 1094
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v9, :cond_73f

    int-to-long v9, v11

    .line 1095
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1097
    :cond_73f
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v9

    .line 1098
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v10

    goto/16 :goto_834

    .line 1082
    :pswitch_749
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1083
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzj(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90c

    .line 1085
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v9, :cond_75d

    int-to-long v9, v11

    .line 1086
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1088
    :cond_75d
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v9

    .line 1089
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v10

    goto/16 :goto_834

    .line 1073
    :pswitch_767
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1074
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90c

    .line 1076
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v9, :cond_77b

    int-to-long v9, v11

    .line 1077
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1079
    :cond_77b
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v9

    .line 1080
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v10

    goto/16 :goto_834

    .line 1064
    :pswitch_785
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1065
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90c

    .line 1067
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v9, :cond_799

    int-to-long v9, v11

    .line 1068
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1070
    :cond_799
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v9

    .line 1071
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v10

    goto/16 :goto_834

    .line 1055
    :pswitch_7a3
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1056
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zze(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90c

    .line 1058
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v9, :cond_7b7

    int-to-long v9, v11

    .line 1059
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1061
    :cond_7b7
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v9

    .line 1062
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v10

    goto/16 :goto_834

    .line 1046
    :pswitch_7c1
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1047
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90c

    .line 1049
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v9, :cond_7d5

    int-to-long v9, v11

    .line 1050
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1052
    :cond_7d5
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v9

    .line 1053
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v10

    goto :goto_834

    .line 1037
    :pswitch_7de
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1038
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90c

    .line 1040
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v9, :cond_7f2

    int-to-long v9, v11

    .line 1041
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1043
    :cond_7f2
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v9

    .line 1044
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v10

    goto :goto_834

    .line 1028
    :pswitch_7fb
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1029
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90c

    .line 1031
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v9, :cond_80f

    int-to-long v9, v11

    .line 1032
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1034
    :cond_80f
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v9

    .line 1035
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v10

    goto :goto_834

    .line 1019
    :pswitch_818
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1020
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90c

    .line 1022
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzk:Z

    if-eqz v9, :cond_82c

    int-to-long v9, v11

    .line 1023
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1025
    :cond_82c
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(I)I

    move-result v9

    .line 1026
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(I)I

    move-result v10

    :goto_834
    add-int/2addr v9, v10

    add-int/2addr v9, v4

    goto/16 :goto_955

    .line 1015
    :pswitch_838
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v11, 0x0

    .line 1016
    invoke-static {v15, v4, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzc(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_90b

    :pswitch_845
    const/4 v11, 0x0

    .line 1011
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1012
    invoke-static {v15, v4, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzg(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_90b

    :pswitch_852
    const/4 v11, 0x0

    .line 1007
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1008
    invoke-static {v15, v4, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_90b

    :pswitch_85f
    const/4 v11, 0x0

    .line 1003
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1004
    invoke-static {v15, v4, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_90b

    :pswitch_86c
    const/4 v11, 0x0

    .line 999
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1000
    invoke-static {v15, v4, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzd(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_90b

    :pswitch_879
    const/4 v11, 0x0

    .line 995
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 996
    invoke-static {v15, v4, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzf(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_90b

    .line 991
    :pswitch_886
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 992
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_90b

    .line 987
    :pswitch_892
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v9

    .line 988
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v4

    goto :goto_90b

    .line 984
    :pswitch_8a1
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;)I

    move-result v4

    goto :goto_90b

    .line 980
    :pswitch_8ac
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v11, 0x0

    .line 981
    invoke-static {v15, v4, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzj(ILjava/util/List;Z)I

    move-result v4

    goto :goto_90b

    :pswitch_8b8
    const/4 v11, 0x0

    .line 976
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 977
    invoke-static {v15, v4, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(ILjava/util/List;Z)I

    move-result v4

    goto :goto_90b

    :pswitch_8c4
    const/4 v11, 0x0

    .line 972
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 973
    invoke-static {v15, v4, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(ILjava/util/List;Z)I

    move-result v4

    goto :goto_90b

    :pswitch_8d0
    const/4 v11, 0x0

    .line 968
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 969
    invoke-static {v15, v4, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zze(ILjava/util/List;Z)I

    move-result v4

    goto :goto_90b

    :pswitch_8dc
    const/4 v11, 0x0

    .line 964
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 965
    invoke-static {v15, v4, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzb(ILjava/util/List;Z)I

    move-result v4

    goto :goto_90b

    :pswitch_8e8
    const/4 v11, 0x0

    .line 960
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 961
    invoke-static {v15, v4, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/util/List;Z)I

    move-result v4

    goto :goto_90b

    :pswitch_8f4
    const/4 v11, 0x0

    .line 956
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 957
    invoke-static {v15, v4, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzh(ILjava/util/List;Z)I

    move-result v4

    goto :goto_90b

    :pswitch_900
    const/4 v11, 0x0

    .line 952
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 953
    invoke-static {v15, v4, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zzi(ILjava/util/List;Z)I

    move-result v4

    :goto_90b
    add-int/2addr v5, v4

    :cond_90c
    :goto_90c
    const/4 v4, 0x0

    :goto_90d
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_a24

    :pswitch_914
    and-int v4, v12, v18

    if-eqz v4, :cond_90c

    .line 948
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 949
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v9

    .line 950
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzc(ILcom/google/android/gms/internal/firebase_auth/zzjn;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v4

    goto :goto_90b

    :pswitch_927
    and-int v4, v12, v18

    if-eqz v4, :cond_90c

    .line 945
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzf(IJ)I

    move-result v4

    goto :goto_90b

    :pswitch_934
    and-int v4, v12, v18

    if-eqz v4, :cond_90c

    .line 943
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzh(II)I

    move-result v4

    goto :goto_90b

    :pswitch_941
    and-int v4, v12, v18

    if-eqz v4, :cond_90c

    const-wide/16 v9, 0x0

    .line 941
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzh(IJ)I

    move-result v4

    goto :goto_90b

    :pswitch_94c
    and-int v4, v12, v18

    if-eqz v4, :cond_90c

    const/4 v4, 0x0

    .line 939
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzj(II)I

    move-result v9

    :goto_955
    add-int/2addr v5, v9

    goto :goto_90c

    :pswitch_957
    and-int v4, v12, v18

    if-eqz v4, :cond_90c

    .line 937
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzk(II)I

    move-result v4

    goto :goto_90b

    :pswitch_964
    and-int v4, v12, v18

    if-eqz v4, :cond_90c

    .line 935
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(II)I

    move-result v4

    goto :goto_90b

    :pswitch_971
    and-int v4, v12, v18

    if-eqz v4, :cond_90c

    .line 931
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 932
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzc(ILcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result v4

    goto :goto_90b

    :pswitch_980
    and-int v4, v12, v18

    if-eqz v4, :cond_90c

    .line 927
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 928
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v9

    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v4

    goto/16 :goto_90b

    :pswitch_992
    and-int v4, v12, v18

    if-eqz v4, :cond_90c

    .line 921
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 922
    instance-of v9, v4, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz v9, :cond_9a6

    .line 923
    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzc(ILcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result v4

    goto/16 :goto_90b

    .line 924
    :cond_9a6
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzb(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_90b

    :pswitch_9ae
    and-int v4, v12, v18

    if-eqz v4, :cond_90c

    .line 919
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzb(IZ)I

    move-result v4

    goto/16 :goto_90b

    :pswitch_9b8
    and-int v4, v12, v18

    if-eqz v4, :cond_90c

    const/4 v4, 0x0

    .line 917
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzi(II)I

    move-result v9

    add-int/2addr v5, v9

    goto/16 :goto_90d

    :pswitch_9c4
    const/4 v4, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_9d0

    const-wide/16 v13, 0x0

    .line 915
    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzg(IJ)I

    move-result v9

    goto :goto_a02

    :cond_9d0
    const-wide/16 v13, 0x0

    goto :goto_a03

    :pswitch_9d3
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_a03

    .line 913
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-static {v15, v9}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzf(II)I

    move-result v9

    goto :goto_a02

    :pswitch_9e3
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_a03

    .line 911
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zze(IJ)I

    move-result v9

    goto :goto_a02

    :pswitch_9f3
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_a03

    .line 909
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzd(IJ)I

    move-result v9

    :goto_a02
    add-int/2addr v5, v9

    :cond_a03
    :goto_a03
    const/4 v9, 0x0

    goto :goto_a12

    :pswitch_a05
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_a03

    const/4 v9, 0x0

    .line 907
    invoke-static {v15, v9}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzb(IF)I

    move-result v10

    add-int/2addr v5, v10

    :cond_a12
    :goto_a12
    const-wide/16 v10, 0x0

    goto :goto_a24

    :pswitch_a15
    const/4 v4, 0x0

    const/4 v9, 0x0

    const-wide/16 v13, 0x0

    and-int v10, v12, v18

    if-eqz v10, :cond_a12

    const-wide/16 v10, 0x0

    .line 905
    invoke-static {v15, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->zzb(ID)I

    move-result v15

    add-int/2addr v5, v15

    :goto_a24
    add-int/lit8 v3, v3, 0x3

    move-wide v9, v13

    const/4 v4, 0x0

    const/4 v11, 0x0

    goto/16 :goto_4fa

    :cond_a2b
    const/4 v4, 0x0

    .line 1201
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v5, v2

    .line 1202
    iget-boolean v2, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzh:Z

    if-eqz v2, :cond_a85

    .line 1203
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object v1

    const/4 v2, 0x0

    .line 1205
    :goto_a3e
    iget-object v3, v1, Lcom/google/android/gms/internal/firebase_auth/zzhv;->zza:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase_auth/zzki;->zzc()I

    move-result v3

    if-ge v4, v3, :cond_a5e

    .line 1206
    iget-object v3, v1, Lcom/google/android/gms/internal/firebase_auth/zzhv;->zza:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzki;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 1207
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/firebase_auth/zzhx;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->zza(Lcom/google/android/gms/internal/firebase_auth/zzhx;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_a3e

    .line 1209
    :cond_a5e
    iget-object v1, v1, Lcom/google/android/gms/internal/firebase_auth/zzhv;->zza:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->zzd()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1210
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzhx;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->zza(Lcom/google/android/gms/internal/firebase_auth/zzhx;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_a68

    :cond_a84
    add-int/2addr v5, v2

    :cond_a85
    return v5

    :pswitch_data_a86
    .packed-switch 0x0
        :pswitch_4d6
        :pswitch_4ca
        :pswitch_4ba
        :pswitch_4aa
        :pswitch_49a
        :pswitch_48e
        :pswitch_482
        :pswitch_476
        :pswitch_458
        :pswitch_444
        :pswitch_433
        :pswitch_424
        :pswitch_415
        :pswitch_40a
        :pswitch_3ff
        :pswitch_3f0
        :pswitch_3e1
        :pswitch_3cc
        :pswitch_3c1
        :pswitch_3b8
        :pswitch_3af
        :pswitch_3a6
        :pswitch_39d
        :pswitch_394
        :pswitch_38b
        :pswitch_382
        :pswitch_379
        :pswitch_36c
        :pswitch_363
        :pswitch_35a
        :pswitch_350
        :pswitch_346
        :pswitch_33c
        :pswitch_332
        :pswitch_328
        :pswitch_308
        :pswitch_2eb
        :pswitch_2ce
        :pswitch_2b1
        :pswitch_293
        :pswitch_275
        :pswitch_257
        :pswitch_239
        :pswitch_21b
        :pswitch_1fd
        :pswitch_1df
        :pswitch_1c1
        :pswitch_1a3
        :pswitch_185
        :pswitch_177
        :pswitch_167
        :pswitch_159
        :pswitch_14d
        :pswitch_13d
        :pswitch_12d
        :pswitch_11d
        :pswitch_111
        :pswitch_105
        :pswitch_f9
        :pswitch_db
        :pswitch_c7
        :pswitch_b5
        :pswitch_a5
        :pswitch_95
        :pswitch_89
        :pswitch_7d
        :pswitch_6d
        :pswitch_5d
        :pswitch_47
    .end packed-switch

    :pswitch_data_b14
    .packed-switch 0x0
        :pswitch_a15
        :pswitch_a05
        :pswitch_9f3
        :pswitch_9e3
        :pswitch_9d3
        :pswitch_9c4
        :pswitch_9b8
        :pswitch_9ae
        :pswitch_992
        :pswitch_980
        :pswitch_971
        :pswitch_964
        :pswitch_957
        :pswitch_94c
        :pswitch_941
        :pswitch_934
        :pswitch_927
        :pswitch_914
        :pswitch_900
        :pswitch_8f4
        :pswitch_8e8
        :pswitch_8dc
        :pswitch_8d0
        :pswitch_8c4
        :pswitch_8b8
        :pswitch_8ac
        :pswitch_8a1
        :pswitch_892
        :pswitch_886
        :pswitch_879
        :pswitch_86c
        :pswitch_85f
        :pswitch_852
        :pswitch_845
        :pswitch_838
        :pswitch_818
        :pswitch_7fb
        :pswitch_7de
        :pswitch_7c1
        :pswitch_7a3
        :pswitch_785
        :pswitch_767
        :pswitch_749
        :pswitch_72b
        :pswitch_70d
        :pswitch_6ef
        :pswitch_6d1
        :pswitch_6b3
        :pswitch_695
        :pswitch_685
        :pswitch_675
        :pswitch_667
        :pswitch_65a
        :pswitch_64a
        :pswitch_63a
        :pswitch_62a
        :pswitch_61c
        :pswitch_60f
        :pswitch_603
        :pswitch_5e5
        :pswitch_5d1
        :pswitch_5bf
        :pswitch_5af
        :pswitch_59f
        :pswitch_592
        :pswitch_584
        :pswitch_574
        :pswitch_564
        :pswitch_54e
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_190

    const/4 v0, 0x0

    .line 457
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_181

    .line 459
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 464
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_198

    goto/16 :goto_17d

    .line 533
    :pswitch_1f
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 530
    :pswitch_24
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 531
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 532
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_17d

    .line 528
    :pswitch_36
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 525
    :pswitch_3b
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 526
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 527
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_17d

    .line 523
    :pswitch_4d
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjk;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_17d

    .line 521
    :pswitch_54
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zza(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_17d

    .line 519
    :pswitch_5b
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 516
    :pswitch_60
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 517
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JJ)V

    .line 518
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 513
    :pswitch_72
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 514
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JI)V

    .line 515
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 510
    :pswitch_84
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 511
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JJ)V

    .line 512
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 507
    :pswitch_96
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 508
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JI)V

    .line 509
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 504
    :pswitch_a8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 505
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JI)V

    .line 506
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 501
    :pswitch_ba
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 502
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JI)V

    .line 503
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 498
    :pswitch_cc
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 499
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 500
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 496
    :pswitch_de
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 493
    :pswitch_e3
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 494
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 495
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 490
    :pswitch_f5
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 491
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzc(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JZ)V

    .line 492
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 487
    :pswitch_107
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 488
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JI)V

    .line 489
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 484
    :pswitch_118
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 485
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JJ)V

    .line 486
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 481
    :pswitch_129
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 482
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JI)V

    .line 483
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 478
    :pswitch_13a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 479
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JJ)V

    .line 480
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 475
    :pswitch_14b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 476
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JJ)V

    .line 477
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 472
    :pswitch_15c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 473
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzd(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JF)V

    .line 474
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 469
    :pswitch_16d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 470
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zze(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JD)V

    .line 471
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(Ljava/lang/Object;I)V

    :cond_17d
    :goto_17d
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_3

    .line 535
    :cond_181
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 536
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzh:Z

    if-eqz v0, :cond_18f

    .line 537
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->zza(Lcom/google/android/gms/internal/firebase_auth/zzhu;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18f
    return-void

    .line 456
    :cond_190
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    return-void

    nop

    :pswitch_data_198
    .packed-switch 0x0
        :pswitch_16d
        :pswitch_15c
        :pswitch_14b
        :pswitch_13a
        :pswitch_129
        :pswitch_118
        :pswitch_107
        :pswitch_f5
        :pswitch_e3
        :pswitch_de
        :pswitch_cc
        :pswitch_ba
        :pswitch_a8
        :pswitch_96
        :pswitch_84
        :pswitch_72
        :pswitch_60
        :pswitch_5b
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_4d
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_36
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_1f
    .end packed-switch
.end method

.method public final zzc(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3041
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzm:I

    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzn:I

    if-ge v0, v1, :cond_25

    .line 3042
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzl:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3045
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 3047
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3049
    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzl:[I

    array-length v0, v0

    :goto_28
    if-ge v1, v0, :cond_37

    .line 3051
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzp:Lcom/google/android/gms/internal/firebase_auth/zzix;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzl:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzix;->zzb(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 3053
    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->zzd(Ljava/lang/Object;)V

    .line 3054
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzh:Z

    if-eqz v0, :cond_45

    .line 3055
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zzc(Ljava/lang/Object;)V

    :cond_45
    return-void
.end method

.method public final zzd(Ljava/lang/Object;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 3094
    :goto_d
    iget v2, v6, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzm:I

    const/4 v11, 0x1

    if-ge v10, v2, :cond_131

    .line 3095
    iget-object v2, v6, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzl:[I

    aget v12, v2, v10

    .line 3097
    iget-object v2, v6, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    aget v13, v2, v12

    .line 3099
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzd(I)I

    move-result v14

    .line 3100
    iget-object v2, v6, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzc:[I

    add-int/lit8 v3, v12, 0x2

    aget v2, v2, v3

    and-int v3, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v11, v2

    if-eq v3, v0, :cond_3d

    if-eq v3, v8, :cond_38

    .line 3106
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb:Lsun/misc/Unsafe;

    int-to-long v1, v3

    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move/from16 v17, v0

    goto :goto_3a

    :cond_38
    move/from16 v17, v1

    :goto_3a
    move/from16 v16, v3

    goto :goto_41

    :cond_3d
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_41
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    :goto_49
    if-eqz v0, :cond_5c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 3110
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_5c

    return v9

    :cond_5c
    const/high16 v0, 0xff00000

    and-int/2addr v0, v14

    ushr-int/lit8 v0, v0, 0x14

    const/16 v1, 0x9

    if-eq v0, v1, :cond_10e

    const/16 v1, 0x11

    if-eq v0, v1, :cond_10e

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_e2

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_d1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_d1

    const/16 v1, 0x31

    if-eq v0, v1, :cond_e2

    const/16 v1, 0x32

    if-eq v0, v1, :cond_7f

    goto/16 :goto_129

    .line 3136
    :cond_7f
    iget-object v0, v6, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    and-int v1, v14, v8

    int-to-long v1, v1

    .line 3138
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->zzc(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 3139
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ce

    .line 3140
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzb(I)Ljava/lang/Object;

    move-result-object v1

    .line 3141
    iget-object v2, v6, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzs:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzji;

    move-result-object v1

    .line 3142
    iget-object v1, v1, Lcom/google/android/gms/internal/firebase_auth/zzji;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzlm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzlm;->zza()Lcom/google/android/gms/internal/firebase_auth/zzlt;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase_auth/zzlt;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzlt;

    if-ne v1, v2, :cond_ce

    const/4 v1, 0x0

    .line 3144
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_af
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_c7

    .line 3146
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v1

    .line 3147
    :cond_c7
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zzd(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    const/4 v11, 0x0

    :cond_ce
    if-nez v11, :cond_129

    return v9

    .line 3132
    :cond_d1
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 3133
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase_auth/zzkd;)Z

    move-result v0

    if-nez v0, :cond_129

    return v9

    :cond_e2
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 3121
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3122
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10b

    .line 3123
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v1

    const/4 v2, 0x0

    .line 3124
    :goto_f6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_10b

    .line 3125
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 3126
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zzd(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_108

    const/4 v11, 0x0

    goto :goto_10b

    :cond_108
    add-int/lit8 v2, v2, 0x1

    goto :goto_f6

    :cond_10b
    :goto_10b
    if-nez v11, :cond_129

    return v9

    :cond_10e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 3115
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 3116
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase_auth/zzkd;)Z

    move-result v0

    if-nez v0, :cond_129

    return v9

    :cond_129
    :goto_129
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_d

    .line 3154
    :cond_131
    iget-boolean v0, v6, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzh:Z

    if-eqz v0, :cond_142

    .line 3155
    iget-object v0, v6, Lcom/google/android/gms/internal/firebase_auth/zzjr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->zzf()Z

    move-result v0

    if-nez v0, :cond_142

    return v9

    :cond_142
    return v11
.end method
