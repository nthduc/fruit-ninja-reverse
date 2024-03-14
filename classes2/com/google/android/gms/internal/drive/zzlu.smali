.class final Lcom/google/android/gms/internal/drive/zzlu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzmf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/drive/zzmf<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zzub:[I

.field private static final zzuc:Lsun/misc/Unsafe;


# instance fields
.field private final zzud:[I

.field private final zzue:[Ljava/lang/Object;

.field private final zzuf:I

.field private final zzug:I

.field private final zzuh:Lcom/google/android/gms/internal/drive/zzlq;

.field private final zzui:Z

.field private final zzuj:Z

.field private final zzuk:Z

.field private final zzul:Z

.field private final zzum:[I

.field private final zzun:I

.field private final zzuo:I

.field private final zzup:Lcom/google/android/gms/internal/drive/zzly;

.field private final zzuq:Lcom/google/android/gms/internal/drive/zzla;

.field private final zzur:Lcom/google/android/gms/internal/drive/zzmx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/drive/zzmx<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzus:Lcom/google/android/gms/internal/drive/zzjy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/drive/zzjy<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzut:Lcom/google/android/gms/internal/drive/zzll;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 3542
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/drive/zzlu;->zzub:[I

    .line 3543
    invoke-static {}, Lcom/google/android/gms/internal/drive/zznd;->zzff()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/drive/zzlq;ZZ[IIILcom/google/android/gms/internal/drive/zzly;Lcom/google/android/gms/internal/drive/zzla;Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzll;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/drive/zzlq;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/drive/zzly;",
            "Lcom/google/android/gms/internal/drive/zzla;",
            "Lcom/google/android/gms/internal/drive/zzmx<",
            "**>;",
            "Lcom/google/android/gms/internal/drive/zzjy<",
            "*>;",
            "Lcom/google/android/gms/internal/drive/zzll;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzue:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuf:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzug:I

    .line 6
    instance-of p1, p5, Lcom/google/android/gms/internal/drive/zzkk;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuj:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_1c

    .line 8
    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/drive/zzjy;->zze(Lcom/google/android/gms/internal/drive/zzlq;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 p2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p2, 0x0

    :goto_1d
    iput-boolean p2, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzum:[I

    .line 11
    iput p9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzun:I

    .line 12
    iput p10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuo:I

    .line 13
    iput-object p11, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzup:Lcom/google/android/gms/internal/drive/zzly;

    .line 14
    iput-object p12, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuq:Lcom/google/android/gms/internal/drive/zzla;

    .line 15
    iput-object p13, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    .line 16
    iput-object p14, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuh:Lcom/google/android/gms/internal/drive/zzlq;

    .line 18
    iput-object p15, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/drive/zzmx;Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/drive/zzmx<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1205
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->zzr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1206
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->zzn(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/drive/zziz;)I
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/drive/zziz;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    .line 2908
    sget-object v12, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    .line 2909
    iget-object v7, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_1a4

    goto/16 :goto_1a1

    :pswitch_28
    const/4 v7, 0x3

    if-ne v5, v7, :cond_1a1

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 2990
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    .line 2991
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;[BIIILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2992
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4b

    .line 2993
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4c

    :cond_4b
    const/4 v15, 0x0

    :goto_4c
    if-nez v15, :cond_55

    .line 2996
    iget-object v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_19d

    .line 2997
    :cond_55
    iget-object v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    .line 2998
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/drive/zzkm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2999
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_19d

    :pswitch_60
    if-nez v5, :cond_1a1

    .line 2984
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2985
    iget-wide v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzjo;->zzk(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_19d

    :pswitch_75
    if-nez v5, :cond_1a1

    .line 2980
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2981
    iget v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjo;->zzw(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_19d

    :pswitch_8a
    if-nez v5, :cond_1a1

    .line 2971
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v3

    .line 2972
    iget v4, v11, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    .line 2973
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzar(I)Lcom/google/android/gms/internal/drive/zzko;

    move-result-object v5

    if-eqz v5, :cond_ae

    .line 2974
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/drive/zzko;->zzan(I)Z

    move-result v5

    if-eqz v5, :cond_9f

    goto :goto_ae

    .line 2977
    :cond_9f
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/drive/zzlu;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/drive/zzmy;->zzb(ILjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_1a2

    .line 2975
    :cond_ae
    :goto_ae
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_19d

    :pswitch_b8
    if-ne v5, v15, :cond_1a1

    .line 2967
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/drive/zziy;->zze([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2968
    iget-object v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_19d

    :pswitch_c5
    if-ne v5, v15, :cond_1a1

    .line 2954
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v2

    move/from16 v5, p4

    .line 2955
    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;[BIILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2956
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_dc

    .line 2957
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_dd

    :cond_dc
    const/4 v15, 0x0

    :goto_dd
    if-nez v15, :cond_e5

    .line 2960
    iget-object v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_ee

    .line 2961
    :cond_e5
    iget-object v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    .line 2962
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/drive/zzkm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2963
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2964
    :goto_ee
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1a2

    :pswitch_f3
    if-ne v5, v15, :cond_1a1

    .line 2940
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2941
    iget v4, v11, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-nez v4, :cond_103

    const-string v3, ""

    .line 2943
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_122

    :cond_103
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_117

    add-int v5, v2, v4

    .line 2945
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/drive/zznf;->zze([BII)Z

    move-result v5

    if-eqz v5, :cond_112

    goto :goto_117

    .line 2946
    :cond_112
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdn()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2947
    :cond_117
    :goto_117
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/drive/zzkm;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2948
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 2950
    :goto_122
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1a2

    :pswitch_127
    if-nez v5, :cond_1a1

    .line 2936
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2937
    iget-wide v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_137

    const/4 v15, 0x1

    goto :goto_138

    :cond_137
    const/4 v15, 0x0

    :goto_138
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_19d

    :pswitch_140
    if-ne v5, v7, :cond_1a1

    .line 2932
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/drive/zziy;->zza([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_18a

    :pswitch_14e
    const/4 v2, 0x1

    if-ne v5, v2, :cond_1a1

    .line 2928
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_19b

    :pswitch_15d
    if-nez v5, :cond_1a1

    .line 2924
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2925
    iget v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_19d

    :pswitch_16d
    if-nez v5, :cond_1a1

    .line 2920
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2921
    iget-wide v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_19d

    :pswitch_17d
    if-ne v5, v7, :cond_1a1

    .line 2916
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_18a
    add-int/lit8 v2, v4, 0x4

    goto :goto_19d

    :pswitch_18d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_1a1

    .line 2912
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_19b
    add-int/lit8 v2, v4, 0x8

    .line 3000
    :goto_19d
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1a2

    :cond_1a1
    :goto_1a1
    move v2, v4

    :goto_1a2
    return v2

    nop

    :pswitch_data_1a4
    .packed-switch 0x33
        :pswitch_18d
        :pswitch_17d
        :pswitch_16d
        :pswitch_16d
        :pswitch_15d
        :pswitch_14e
        :pswitch_140
        :pswitch_127
        :pswitch_f3
        :pswitch_c5
        :pswitch_b8
        :pswitch_15d
        :pswitch_8a
        :pswitch_140
        :pswitch_14e
        :pswitch_75
        :pswitch_60
        :pswitch_28
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/drive/zziz;)I
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/drive/zziz;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    .line 2531
    sget-object v11, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/drive/zzkp;

    .line 2532
    invoke-interface {v11}, Lcom/google/android/gms/internal/drive/zzkp;->zzbo()Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_36

    .line 2533
    invoke-interface {v11}, Lcom/google/android/gms/internal/drive/zzkp;->size()I

    move-result v12

    if-nez v12, :cond_2c

    const/16 v12, 0xa

    goto :goto_2d

    :cond_2c
    shl-int/2addr v12, v13

    .line 2536
    :goto_2d
    invoke-interface {v11, v12}, Lcom/google/android/gms/internal/drive/zzkp;->zzr(I)Lcom/google/android/gms/internal/drive/zzkp;

    move-result-object v11

    .line 2537
    sget-object v12, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v9, v10, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_36
    const/4 v9, 0x5

    const-wide/16 v14, 0x0

    const/4 v10, 0x2

    packed-switch p11, :pswitch_data_424

    goto/16 :goto_422

    :pswitch_3f
    const/4 v1, 0x3

    if-ne v6, v1, :cond_422

    .line 2848
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 2852
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;[BIIILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2853
    iget-object v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    :goto_5f
    if-ge v4, v5, :cond_422

    .line 2855
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v8

    .line 2856
    iget v9, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v9, :cond_422

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 2857
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;[BIIILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2858
    iget-object v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :pswitch_7f
    if-ne v6, v10, :cond_a3

    .line 2823
    check-cast v11, Lcom/google/android/gms/internal/drive/zzle;

    .line 2824
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2825
    iget v2, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    add-int/2addr v2, v1

    :goto_8a
    if-ge v1, v2, :cond_9a

    .line 2827
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2828
    iget-wide v4, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/drive/zzjo;->zzk(J)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    goto :goto_8a

    :cond_9a
    if-ne v1, v2, :cond_9e

    goto/16 :goto_423

    .line 2830
    :cond_9e
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :cond_a3
    if-nez v6, :cond_422

    .line 2835
    check-cast v11, Lcom/google/android/gms/internal/drive/zzle;

    .line 2836
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2837
    iget-wide v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/drive/zzjo;->zzk(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    :goto_b4
    if-ge v1, v5, :cond_423

    .line 2839
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2840
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v6, :cond_423

    .line 2841
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2842
    iget-wide v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/drive/zzjo;->zzk(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    goto :goto_b4

    :pswitch_cc
    if-ne v6, v10, :cond_f0

    .line 2798
    check-cast v11, Lcom/google/android/gms/internal/drive/zzkl;

    .line 2799
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2800
    iget v2, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    add-int/2addr v2, v1

    :goto_d7
    if-ge v1, v2, :cond_e7

    .line 2802
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2803
    iget v4, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjo;->zzw(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/drive/zzkl;->zzam(I)V

    goto :goto_d7

    :cond_e7
    if-ne v1, v2, :cond_eb

    goto/16 :goto_423

    .line 2805
    :cond_eb
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :cond_f0
    if-nez v6, :cond_422

    .line 2810
    check-cast v11, Lcom/google/android/gms/internal/drive/zzkl;

    .line 2811
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2812
    iget v4, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjo;->zzw(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/drive/zzkl;->zzam(I)V

    :goto_101
    if-ge v1, v5, :cond_423

    .line 2814
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2815
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v6, :cond_423

    .line 2816
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2817
    iget v4, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjo;->zzw(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/drive/zzkl;->zzam(I)V

    goto :goto_101

    :pswitch_119
    if-ne v6, v10, :cond_120

    .line 2785
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zzkp;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    goto :goto_131

    :cond_120
    if-nez v6, :cond_422

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p14

    .line 2787
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BIILcom/google/android/gms/internal/drive/zzkp;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2788
    :goto_131
    check-cast v1, Lcom/google/android/gms/internal/drive/zzkk;

    iget-object v3, v1, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    .line 2789
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmy;->zzfa()Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v4

    if-ne v3, v4, :cond_13c

    const/4 v3, 0x0

    .line 2792
    :cond_13c
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zzar(I)Lcom/google/android/gms/internal/drive/zzko;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    move/from16 v6, p6

    .line 2793
    invoke-static {v6, v11, v4, v3, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzko;Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzmx;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/drive/zzmy;

    if-eqz v3, :cond_14e

    .line 2795
    iput-object v3, v1, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    :cond_14e
    :goto_14e
    move v1, v2

    goto/16 :goto_423

    :pswitch_151
    if-ne v6, v10, :cond_422

    .line 2758
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2759
    iget v4, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ltz v4, :cond_1a4

    .line 2762
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_19f

    if-nez v4, :cond_167

    .line 2765
    sget-object v4, Lcom/google/android/gms/internal/drive/zzjc;->zznq:Lcom/google/android/gms/internal/drive/zzjc;

    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_16f

    .line 2766
    :cond_167
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/drive/zzjc;->zzb([BII)Lcom/google/android/gms/internal/drive/zzjc;

    move-result-object v6

    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    :goto_16e
    add-int/2addr v1, v4

    :goto_16f
    if-ge v1, v5, :cond_423

    .line 2769
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2770
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v6, :cond_423

    .line 2771
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2772
    iget v4, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ltz v4, :cond_19a

    .line 2775
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_195

    if-nez v4, :cond_18d

    .line 2778
    sget-object v4, Lcom/google/android/gms/internal/drive/zzjc;->zznq:Lcom/google/android/gms/internal/drive/zzjc;

    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_16f

    .line 2779
    :cond_18d
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/drive/zzjc;->zzb([BII)Lcom/google/android/gms/internal/drive/zzjc;

    move-result-object v6

    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_16e

    .line 2776
    :cond_195
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2774
    :cond_19a
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdj()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2763
    :cond_19f
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2761
    :cond_1a4
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdj()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :pswitch_1a9
    if-ne v6, v10, :cond_422

    .line 2753
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    .line 2754
    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;I[BIILcom/google/android/gms/internal/drive/zzkp;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    goto/16 :goto_423

    :pswitch_1c3
    if-ne v6, v10, :cond_422

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v14

    if-nez v6, :cond_216

    .line 2697
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2698
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ltz v6, :cond_211

    if-nez v6, :cond_1de

    .line 2702
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_1e9

    .line 2703
    :cond_1de
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/drive/zzkm;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2704
    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    :goto_1e8
    add-int/2addr v4, v6

    :goto_1e9
    if-ge v4, v5, :cond_422

    .line 2707
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v6

    .line 2708
    iget v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v8, :cond_422

    .line 2709
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2710
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ltz v6, :cond_20c

    if-nez v6, :cond_201

    .line 2714
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_1e9

    .line 2715
    :cond_201
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/drive/zzkm;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2716
    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_1e8

    .line 2712
    :cond_20c
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdj()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2700
    :cond_211
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdj()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2723
    :cond_216
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2724
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ltz v6, :cond_271

    if-nez v6, :cond_224

    .line 2728
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_237

    :cond_224
    add-int v8, v4, v6

    .line 2729
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/drive/zznf;->zze([BII)Z

    move-result v9

    if-eqz v9, :cond_26c

    .line 2731
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/drive/zzkm;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2732
    invoke-interface {v11, v9}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    :goto_236
    move v4, v8

    :goto_237
    if-ge v4, v5, :cond_422

    .line 2735
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v6

    .line 2736
    iget v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v8, :cond_422

    .line 2737
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2738
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ltz v6, :cond_267

    if-nez v6, :cond_24f

    .line 2742
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_237

    :cond_24f
    add-int v8, v4, v6

    .line 2743
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/drive/zznf;->zze([BII)Z

    move-result v9

    if-eqz v9, :cond_262

    .line 2745
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/drive/zzkm;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2746
    invoke-interface {v11, v9}, Lcom/google/android/gms/internal/drive/zzkp;->add(Ljava/lang/Object;)Z

    goto :goto_236

    .line 2744
    :cond_262
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdn()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2740
    :cond_267
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdj()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2730
    :cond_26c
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdn()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    .line 2726
    :cond_271
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdj()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :pswitch_276
    const/4 v1, 0x0

    if-ne v6, v10, :cond_29e

    .line 2670
    check-cast v11, Lcom/google/android/gms/internal/drive/zzja;

    .line 2671
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2672
    iget v4, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    add-int/2addr v4, v2

    :goto_282
    if-ge v2, v4, :cond_295

    .line 2674
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v2

    .line 2675
    iget-wide v5, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    cmp-long v8, v5, v14

    if-eqz v8, :cond_290

    const/4 v5, 0x1

    goto :goto_291

    :cond_290
    const/4 v5, 0x0

    :goto_291
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/drive/zzja;->addBoolean(Z)V

    goto :goto_282

    :cond_295
    if-ne v2, v4, :cond_299

    goto/16 :goto_14e

    .line 2677
    :cond_299
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :cond_29e
    if-nez v6, :cond_422

    .line 2682
    check-cast v11, Lcom/google/android/gms/internal/drive/zzja;

    .line 2683
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2684
    iget-wide v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_2ae

    const/4 v6, 0x1

    goto :goto_2af

    :cond_2ae
    const/4 v6, 0x0

    :goto_2af
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/drive/zzja;->addBoolean(Z)V

    :goto_2b2
    if-ge v4, v5, :cond_422

    .line 2686
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v6

    .line 2687
    iget v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v8, :cond_422

    .line 2688
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2689
    iget-wide v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_2c8

    const/4 v6, 0x1

    goto :goto_2c9

    :cond_2c8
    const/4 v6, 0x0

    :goto_2c9
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/drive/zzja;->addBoolean(Z)V

    goto :goto_2b2

    :pswitch_2cd
    if-ne v6, v10, :cond_2ed

    .line 2645
    check-cast v11, Lcom/google/android/gms/internal/drive/zzkl;

    .line 2646
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2647
    iget v2, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    add-int/2addr v2, v1

    :goto_2d8
    if-ge v1, v2, :cond_2e4

    .line 2649
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/drive/zziy;->zza([BI)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/drive/zzkl;->zzam(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_2d8

    :cond_2e4
    if-ne v1, v2, :cond_2e8

    goto/16 :goto_423

    .line 2652
    :cond_2e8
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :cond_2ed
    if-ne v6, v9, :cond_422

    .line 2657
    check-cast v11, Lcom/google/android/gms/internal/drive/zzkl;

    .line 2658
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/drive/zziy;->zza([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/drive/zzkl;->zzam(I)V

    :goto_2f8
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_423

    .line 2661
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2662
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v6, :cond_423

    .line 2663
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zziy;->zza([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/drive/zzkl;->zzam(I)V

    goto :goto_2f8

    :pswitch_30c
    if-ne v6, v10, :cond_32c

    .line 2620
    check-cast v11, Lcom/google/android/gms/internal/drive/zzle;

    .line 2621
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2622
    iget v2, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    add-int/2addr v2, v1

    :goto_317
    if-ge v1, v2, :cond_323

    .line 2624
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BI)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_317

    :cond_323
    if-ne v1, v2, :cond_327

    goto/16 :goto_423

    .line 2627
    :cond_327
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :cond_32c
    if-ne v6, v13, :cond_422

    .line 2632
    check-cast v11, Lcom/google/android/gms/internal/drive/zzle;

    .line 2633
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    :goto_337
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_423

    .line 2636
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2637
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v6, :cond_423

    .line 2638
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    goto :goto_337

    :pswitch_34b
    if-ne v6, v10, :cond_353

    .line 2615
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zzkp;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    goto/16 :goto_423

    :cond_353
    if-nez v6, :cond_422

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    .line 2617
    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BIILcom/google/android/gms/internal/drive/zzkp;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    goto/16 :goto_423

    :pswitch_365
    if-ne v6, v10, :cond_385

    .line 2591
    check-cast v11, Lcom/google/android/gms/internal/drive/zzle;

    .line 2592
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2593
    iget v2, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    add-int/2addr v2, v1

    :goto_370
    if-ge v1, v2, :cond_37c

    .line 2595
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2596
    iget-wide v4, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    goto :goto_370

    :cond_37c
    if-ne v1, v2, :cond_380

    goto/16 :goto_423

    .line 2598
    :cond_380
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :cond_385
    if-nez v6, :cond_422

    .line 2603
    check-cast v11, Lcom/google/android/gms/internal/drive/zzle;

    .line 2604
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2605
    iget-wide v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    :goto_392
    if-ge v1, v5, :cond_423

    .line 2607
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2608
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v6, :cond_423

    .line 2609
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2610
    iget-wide v8, v7, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/drive/zzle;->zzv(J)V

    goto :goto_392

    :pswitch_3a6
    if-ne v6, v10, :cond_3c5

    .line 2566
    check-cast v11, Lcom/google/android/gms/internal/drive/zzkh;

    .line 2567
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2568
    iget v2, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    add-int/2addr v2, v1

    :goto_3b1
    if-ge v1, v2, :cond_3bd

    .line 2570
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BI)F

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/drive/zzkh;->zzc(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_3b1

    :cond_3bd
    if-ne v1, v2, :cond_3c0

    goto :goto_423

    .line 2573
    :cond_3c0
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :cond_3c5
    if-ne v6, v9, :cond_422

    .line 2578
    check-cast v11, Lcom/google/android/gms/internal/drive/zzkh;

    .line 2579
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/drive/zzkh;->zzc(F)V

    :goto_3d0
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_423

    .line 2582
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2583
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v6, :cond_423

    .line 2584
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/drive/zzkh;->zzc(F)V

    goto :goto_3d0

    :pswitch_3e4
    if-ne v6, v10, :cond_403

    .line 2541
    check-cast v11, Lcom/google/android/gms/internal/drive/zzju;

    .line 2542
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2543
    iget v2, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    add-int/2addr v2, v1

    :goto_3ef
    if-ge v1, v2, :cond_3fb

    .line 2545
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BI)D

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/drive/zzju;->zzc(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_3ef

    :cond_3fb
    if-ne v1, v2, :cond_3fe

    goto :goto_423

    .line 2548
    :cond_3fe
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v1

    throw v1

    :cond_403
    if-ne v6, v13, :cond_422

    .line 2553
    check-cast v11, Lcom/google/android/gms/internal/drive/zzju;

    .line 2554
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/drive/zzju;->zzc(D)V

    :goto_40e
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_423

    .line 2557
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v4

    .line 2558
    iget v6, v7, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ne v2, v6, :cond_423

    .line 2559
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/drive/zzju;->zzc(D)V

    goto :goto_40e

    :cond_422
    :goto_422
    move v1, v4

    :cond_423
    :goto_423
    return v1

    :pswitch_data_424
    .packed-switch 0x12
        :pswitch_3e4
        :pswitch_3a6
        :pswitch_365
        :pswitch_365
        :pswitch_34b
        :pswitch_30c
        :pswitch_2cd
        :pswitch_276
        :pswitch_1c3
        :pswitch_1a9
        :pswitch_151
        :pswitch_34b
        :pswitch_119
        :pswitch_2cd
        :pswitch_30c
        :pswitch_cc
        :pswitch_7f
        :pswitch_3e4
        :pswitch_3a6
        :pswitch_365
        :pswitch_365
        :pswitch_34b
        :pswitch_30c
        :pswitch_2cd
        :pswitch_276
        :pswitch_34b
        :pswitch_119
        :pswitch_2cd
        :pswitch_30c
        :pswitch_cc
        :pswitch_7f
        :pswitch_3f
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/drive/zziz;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/drive/zziz;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2863
    sget-object v0, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    .line 2864
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/drive/zzlu;->zzaq(I)Ljava/lang/Object;

    move-result-object p5

    .line 2865
    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 2866
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/drive/zzll;->zzj(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2868
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    invoke-interface {v2, p5}, Lcom/google/android/gms/internal/drive/zzll;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2869
    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/internal/drive/zzll;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2870
    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    .line 2871
    :cond_21
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    .line 2872
    invoke-interface {p1, p5}, Lcom/google/android/gms/internal/drive/zzll;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzlj;

    move-result-object p1

    iget-object p5, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    .line 2873
    invoke-interface {p5, v1}, Lcom/google/android/gms/internal/drive/zzll;->zzh(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p5

    .line 2875
    invoke-static {p2, p3, p8}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result p3

    .line 2876
    iget p6, p8, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    if-ltz p6, :cond_97

    sub-int p7, p4, p3

    if-gt p6, p7, :cond_97

    add-int/2addr p6, p3

    .line 2880
    iget-object p7, p1, Lcom/google/android/gms/internal/drive/zzlj;->zztv:Ljava/lang/Object;

    .line 2881
    iget-object v0, p1, Lcom/google/android/gms/internal/drive/zzlj;->zztx:Ljava/lang/Object;

    :goto_3e
    if-ge p3, p6, :cond_8c

    add-int/lit8 v1, p3, 0x1

    .line 2883
    aget-byte p3, p2, p3

    if-gez p3, :cond_4c

    .line 2885
    invoke-static {p3, p2, v1, p8}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 2886
    iget p3, p8, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    :cond_4c
    move v2, v1

    ushr-int/lit8 v1, p3, 0x3

    and-int/lit8 v3, p3, 0x7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_72

    const/4 v4, 0x2

    if-eq v1, v4, :cond_58

    goto :goto_87

    .line 2895
    :cond_58
    iget-object v1, p1, Lcom/google/android/gms/internal/drive/zzlj;->zztw:Lcom/google/android/gms/internal/drive/zznm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zznm;->zzfk()I

    move-result v1

    if-ne v3, v1, :cond_87

    .line 2896
    iget-object v4, p1, Lcom/google/android/gms/internal/drive/zzlj;->zztw:Lcom/google/android/gms/internal/drive/zznm;

    iget-object p3, p1, Lcom/google/android/gms/internal/drive/zzlj;->zztx:Ljava/lang/Object;

    .line 2897
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    .line 2898
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/drive/zzlu;->zza([BIILcom/google/android/gms/internal/drive/zznm;Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result p3

    .line 2899
    iget-object v0, p8, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    goto :goto_3e

    .line 2890
    :cond_72
    iget-object v1, p1, Lcom/google/android/gms/internal/drive/zzlj;->zztu:Lcom/google/android/gms/internal/drive/zznm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zznm;->zzfk()I

    move-result v1

    if-ne v3, v1, :cond_87

    .line 2891
    iget-object v4, p1, Lcom/google/android/gms/internal/drive/zzlj;->zztu:Lcom/google/android/gms/internal/drive/zznm;

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    .line 2892
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/drive/zzlu;->zza([BIILcom/google/android/gms/internal/drive/zznm;Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result p3

    .line 2893
    iget-object p7, p8, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    goto :goto_3e

    .line 2901
    :cond_87
    :goto_87
    invoke-static {p3, p2, v2, p4, p8}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BIILcom/google/android/gms/internal/drive/zziz;)I

    move-result p3

    goto :goto_3e

    :cond_8c
    if-ne p3, p6, :cond_92

    .line 2905
    invoke-interface {p5, p7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p6

    .line 2904
    :cond_92
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdm()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object p1

    throw p1

    .line 2878
    :cond_97
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object p1

    throw p1

    return-void
.end method

.method private static zza([BIILcom/google/android/gms/internal/drive/zznm;Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zziz;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/drive/zznm;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/drive/zziz;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2494
    sget-object v0, Lcom/google/android/gms/internal/drive/zzlv;->zzox:[I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/drive/zznm;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_b0

    .line 2529
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2527
    :pswitch_13
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result p0

    goto/16 :goto_ae

    .line 2524
    :pswitch_19
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result p0

    .line 2525
    iget-wide p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzjo;->zzk(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    goto/16 :goto_ae

    .line 2521
    :pswitch_2b
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result p0

    .line 2522
    iget p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjo;->zzw(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    goto/16 :goto_ae

    .line 2518
    :pswitch_3d
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->zzej()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/drive/zzmd;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object p3

    .line 2519
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;[BIILcom/google/android/gms/internal/drive/zziz;)I

    move-result p0

    goto :goto_ae

    .line 2515
    :pswitch_4a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result p0

    .line 2516
    iget-wide p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    goto :goto_ae

    .line 2512
    :pswitch_57
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result p0

    .line 2513
    iget p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    goto :goto_ae

    .line 2509
    :pswitch_64
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    goto :goto_84

    .line 2506
    :pswitch_6f
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    goto :goto_91

    .line 2503
    :pswitch_7a
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zziy;->zza([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    :goto_84
    add-int/lit8 p0, p1, 0x4

    goto :goto_ae

    .line 2500
    :pswitch_87
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    :goto_91
    add-int/lit8 p0, p1, 0x8

    goto :goto_ae

    .line 2498
    :pswitch_94
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/drive/zziy;->zze([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result p0

    goto :goto_ae

    .line 2495
    :pswitch_99
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result p0

    .line 2496
    iget-wide p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_a7

    const/4 p1, 0x1

    goto :goto_a8

    :cond_a7
    const/4 p1, 0x0

    :goto_a8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    :goto_ae
    return p0

    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_99
        :pswitch_94
        :pswitch_87
        :pswitch_7a
        :pswitch_7a
        :pswitch_6f
        :pswitch_6f
        :pswitch_64
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_4a
        :pswitch_4a
        :pswitch_3d
        :pswitch_2b
        :pswitch_19
        :pswitch_13
    .end packed-switch
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zzlo;Lcom/google/android/gms/internal/drive/zzly;Lcom/google/android/gms/internal/drive/zzla;Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzll;)Lcom/google/android/gms/internal/drive/zzlu;
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/drive/zzlo;",
            "Lcom/google/android/gms/internal/drive/zzly;",
            "Lcom/google/android/gms/internal/drive/zzla;",
            "Lcom/google/android/gms/internal/drive/zzmx<",
            "**>;",
            "Lcom/google/android/gms/internal/drive/zzjy<",
            "*>;",
            "Lcom/google/android/gms/internal/drive/zzll;",
            ")",
            "Lcom/google/android/gms/internal/drive/zzlu<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 20
    instance-of v1, v0, Lcom/google/android/gms/internal/drive/zzme;

    if-eqz v1, :cond_444

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/drive/zzme;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzme;->zzec()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzsg:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_14

    const/4 v11, 0x1

    goto :goto_15

    :cond_14
    const/4 v11, 0x0

    .line 23
    :goto_15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzme;->zzek()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v7, 0xd800

    if-lt v5, v7, :cond_3f

    and-int/lit16 v5, v5, 0x1fff

    move v8, v5

    const/4 v5, 0x1

    const/16 v9, 0xd

    :goto_2c
    add-int/lit8 v10, v5, 0x1

    .line 30
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_3c

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v8, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_2c

    :cond_3c
    shl-int/2addr v5, v9

    or-int/2addr v5, v8

    goto :goto_40

    :cond_3f
    const/4 v10, 0x1

    :goto_40
    add-int/lit8 v8, v10, 0x1

    .line 35
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_5f

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_4c
    add-int/lit8 v12, v8, 0x1

    .line 39
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_5c

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_4c

    :cond_5c
    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    goto :goto_60

    :cond_5f
    move v12, v8

    :goto_60
    if-nez v9, :cond_6e

    .line 51
    sget-object v8, Lcom/google/android/gms/internal/drive/zzlu;->zzub:[I

    move-object v15, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto/16 :goto_1a0

    :cond_6e
    add-int/lit8 v8, v12, 0x1

    .line 53
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_8e

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_7a
    add-int/lit8 v12, v8, 0x1

    .line 57
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_8a

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_7a

    :cond_8a
    shl-int/2addr v8, v10

    or-int/2addr v8, v9

    move v9, v8

    goto :goto_8f

    :cond_8e
    move v12, v8

    :goto_8f
    add-int/lit8 v8, v12, 0x1

    .line 62
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_ae

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_9b
    add-int/lit8 v13, v8, 0x1

    .line 66
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_ab

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v12

    or-int/2addr v10, v8

    add-int/lit8 v12, v12, 0xd

    move v8, v13

    goto :goto_9b

    :cond_ab
    shl-int/2addr v8, v12

    or-int/2addr v10, v8

    goto :goto_af

    :cond_ae
    move v13, v8

    :goto_af
    add-int/lit8 v8, v13, 0x1

    .line 71
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_cf

    and-int/lit16 v12, v12, 0x1fff

    const/16 v13, 0xd

    :goto_bb
    add-int/lit8 v14, v8, 0x1

    .line 75
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_cb

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v13

    or-int/2addr v12, v8

    add-int/lit8 v13, v13, 0xd

    move v8, v14

    goto :goto_bb

    :cond_cb
    shl-int/2addr v8, v13

    or-int/2addr v8, v12

    move v12, v8

    goto :goto_d0

    :cond_cf
    move v14, v8

    :goto_d0
    add-int/lit8 v8, v14, 0x1

    .line 80
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_f0

    and-int/lit16 v13, v13, 0x1fff

    const/16 v14, 0xd

    :goto_dc
    add-int/lit8 v15, v8, 0x1

    .line 84
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_ec

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v14

    or-int/2addr v13, v8

    add-int/lit8 v14, v14, 0xd

    move v8, v15

    goto :goto_dc

    :cond_ec
    shl-int/2addr v8, v14

    or-int/2addr v8, v13

    move v13, v8

    goto :goto_f1

    :cond_f0
    move v15, v8

    :goto_f1
    add-int/lit8 v8, v15, 0x1

    .line 89
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_113

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_fd
    add-int/lit8 v16, v8, 0x1

    .line 93
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_10e

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v15

    or-int/2addr v14, v8

    add-int/lit8 v15, v15, 0xd

    move/from16 v8, v16

    goto :goto_fd

    :cond_10e
    shl-int/2addr v8, v15

    or-int/2addr v8, v14

    move v14, v8

    move/from16 v8, v16

    :cond_113
    add-int/lit8 v15, v8, 0x1

    .line 98
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_136

    and-int/lit16 v8, v8, 0x1fff

    const/16 v16, 0xd

    :goto_11f
    add-int/lit8 v17, v15, 0x1

    .line 102
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_131

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v8, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_11f

    :cond_131
    shl-int v15, v15, v16

    or-int/2addr v8, v15

    move/from16 v15, v17

    :cond_136
    add-int/lit8 v16, v15, 0x1

    .line 107
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_162

    and-int/lit16 v15, v15, 0x1fff

    const/16 v17, 0xd

    move/from16 v34, v16

    move/from16 v16, v15

    move/from16 v15, v34

    :goto_148
    add-int/lit8 v18, v15, 0x1

    .line 111
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_15b

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v17

    or-int v16, v16, v15

    add-int/lit8 v17, v17, 0xd

    move/from16 v15, v18

    goto :goto_148

    :cond_15b
    shl-int v15, v15, v17

    or-int v15, v16, v15

    move/from16 v3, v18

    goto :goto_164

    :cond_162
    move/from16 v3, v16

    :goto_164
    add-int/lit8 v16, v3, 0x1

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_18f

    and-int/lit16 v3, v3, 0x1fff

    const/16 v17, 0xd

    move/from16 v34, v16

    move/from16 v16, v3

    move/from16 v3, v34

    :goto_176
    add-int/lit8 v18, v3, 0x1

    .line 120
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_189

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v17

    or-int v16, v16, v3

    add-int/lit8 v17, v17, 0xd

    move/from16 v3, v18

    goto :goto_176

    :cond_189
    shl-int v3, v3, v17

    or-int v3, v16, v3

    move/from16 v16, v18

    :cond_18f
    add-int v17, v3, v8

    add-int v15, v17, v15

    .line 125
    new-array v15, v15, [I

    shl-int/lit8 v17, v9, 0x1

    add-int v10, v17, v10

    move/from16 v34, v16

    move/from16 v16, v9

    move v9, v12

    move/from16 v12, v34

    .line 127
    :goto_1a0
    sget-object v6, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzme;->zzel()[Ljava/lang/Object;

    move-result-object v17

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzme;->zzee()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move/from16 v18, v10

    mul-int/lit8 v10, v14, 0x3

    .line 131
    new-array v10, v10, [I

    shl-int/2addr v14, v4

    .line 132
    new-array v14, v14, [Ljava/lang/Object;

    add-int v20, v3, v8

    move/from16 v22, v3

    move/from16 v23, v20

    const/4 v8, 0x0

    const/16 v21, 0x0

    :goto_1c0
    if-ge v12, v2, :cond_41a

    add-int/lit8 v24, v12, 0x1

    .line 137
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v4, 0xd800

    if-lt v12, v4, :cond_1f4

    and-int/lit16 v12, v12, 0x1fff

    const/16 v26, 0xd

    move/from16 v34, v24

    move/from16 v24, v12

    move/from16 v12, v34

    :goto_1d7
    add-int/lit8 v27, v12, 0x1

    .line 141
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v4, :cond_1ed

    and-int/lit16 v4, v12, 0x1fff

    shl-int v4, v4, v26

    or-int v24, v24, v4

    add-int/lit8 v26, v26, 0xd

    move/from16 v12, v27

    const v4, 0xd800

    goto :goto_1d7

    :cond_1ed
    shl-int v4, v12, v26

    or-int v12, v24, v4

    move/from16 v4, v27

    goto :goto_1f6

    :cond_1f4
    move/from16 v4, v24

    :goto_1f6
    add-int/lit8 v24, v4, 0x1

    .line 146
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v4, v2, :cond_22a

    and-int/lit16 v4, v4, 0x1fff

    const/16 v27, 0xd

    move/from16 v34, v24

    move/from16 v24, v4

    move/from16 v4, v34

    :goto_20d
    add-int/lit8 v28, v4, 0x1

    .line 150
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v2, :cond_223

    and-int/lit16 v2, v4, 0x1fff

    shl-int v2, v2, v27

    or-int v24, v24, v2

    add-int/lit8 v27, v27, 0xd

    move/from16 v4, v28

    const v2, 0xd800

    goto :goto_20d

    :cond_223
    shl-int v2, v4, v27

    or-int v4, v24, v2

    move/from16 v2, v28

    goto :goto_22c

    :cond_22a
    move/from16 v2, v24

    :goto_22c
    move/from16 v24, v3

    and-int/lit16 v3, v4, 0xff

    move/from16 v27, v11

    and-int/lit16 v11, v4, 0x400

    if-eqz v11, :cond_23b

    add-int/lit8 v11, v8, 0x1

    .line 157
    aput v21, v15, v8

    move v8, v11

    :cond_23b
    const/16 v11, 0x33

    move/from16 v30, v8

    if-lt v3, v11, :cond_2e1

    add-int/lit8 v11, v2, 0x1

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v8, 0xd800

    if-lt v2, v8, :cond_26a

    and-int/lit16 v2, v2, 0x1fff

    const/16 v32, 0xd

    :goto_250
    add-int/lit8 v33, v11, 0x1

    .line 163
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v8, :cond_265

    and-int/lit16 v8, v11, 0x1fff

    shl-int v8, v8, v32

    or-int/2addr v2, v8

    add-int/lit8 v32, v32, 0xd

    move/from16 v11, v33

    const v8, 0xd800

    goto :goto_250

    :cond_265
    shl-int v8, v11, v32

    or-int/2addr v2, v8

    move/from16 v11, v33

    :cond_26a
    add-int/lit8 v8, v3, -0x33

    move/from16 v32, v11

    const/16 v11, 0x9

    if-eq v8, v11, :cond_28e

    const/16 v11, 0x11

    if-ne v8, v11, :cond_277

    goto :goto_28e

    :cond_277
    const/16 v11, 0xc

    if-ne v8, v11, :cond_28c

    and-int/lit8 v8, v5, 0x1

    const/4 v11, 0x1

    if-ne v8, v11, :cond_28c

    .line 173
    div-int/lit8 v8, v21, 0x3

    shl-int/2addr v8, v11

    add-int/2addr v8, v11

    add-int/lit8 v11, v18, 0x1

    aget-object v18, v17, v18

    aput-object v18, v14, v8

    move/from16 v18, v11

    :cond_28c
    const/4 v11, 0x1

    goto :goto_29b

    .line 170
    :cond_28e
    :goto_28e
    div-int/lit8 v8, v21, 0x3

    const/4 v11, 0x1

    shl-int/2addr v8, v11

    add-int/2addr v8, v11

    add-int/lit8 v25, v18, 0x1

    aget-object v18, v17, v18

    aput-object v18, v14, v8

    move/from16 v18, v25

    :goto_29b
    shl-int/2addr v2, v11

    .line 175
    aget-object v8, v17, v2

    .line 176
    instance-of v11, v8, Ljava/lang/reflect/Field;

    if-eqz v11, :cond_2a5

    .line 177
    check-cast v8, Ljava/lang/reflect/Field;

    goto :goto_2ad

    .line 178
    :cond_2a5
    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 179
    aput-object v8, v17, v2

    :goto_2ad
    move v11, v9

    .line 180
    invoke-virtual {v6, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v9, v8

    add-int/lit8 v2, v2, 0x1

    .line 182
    aget-object v8, v17, v2

    move/from16 v28, v9

    .line 183
    instance-of v9, v8, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_2c0

    .line 184
    check-cast v8, Ljava/lang/reflect/Field;

    goto :goto_2c8

    .line 185
    :cond_2c0
    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 186
    aput-object v8, v17, v2

    .line 187
    :goto_2c8
    invoke-virtual {v6, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v2, v8

    move-object/from16 v31, v1

    move v8, v2

    move-object v1, v7

    move/from16 v25, v18

    move/from16 v9, v28

    const/4 v2, 0x0

    const/16 v19, 0x1

    move/from16 v28, v11

    move/from16 v18, v13

    move v13, v12

    move/from16 v12, v32

    goto/16 :goto_3e2

    :cond_2e1
    move v11, v9

    add-int/lit8 v8, v18, 0x1

    .line 190
    aget-object v9, v17, v18

    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    move/from16 v18, v13

    const/16 v13, 0x9

    if-eq v3, v13, :cond_361

    const/16 v13, 0x11

    if-ne v3, v13, :cond_2f8

    goto/16 :goto_361

    :cond_2f8
    const/16 v13, 0x1b

    if-eq v3, v13, :cond_350

    const/16 v13, 0x31

    if-ne v3, v13, :cond_301

    goto :goto_350

    :cond_301
    const/16 v13, 0xc

    if-eq v3, v13, :cond_33e

    const/16 v13, 0x1e

    if-eq v3, v13, :cond_33e

    const/16 v13, 0x2c

    if-ne v3, v13, :cond_30e

    goto :goto_33e

    :cond_30e
    const/16 v13, 0x32

    if-ne v3, v13, :cond_33a

    add-int/lit8 v13, v22, 0x1

    .line 199
    aput v21, v15, v22

    .line 200
    div-int/lit8 v22, v21, 0x3

    const/16 v25, 0x1

    shl-int/lit8 v22, v22, 0x1

    add-int/lit8 v28, v8, 0x1

    aget-object v8, v17, v8

    aput-object v8, v14, v22

    and-int/lit16 v8, v4, 0x800

    if-eqz v8, :cond_333

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v8, v28, 0x1

    .line 202
    aget-object v28, v17, v28

    aput-object v28, v14, v22

    move/from16 v28, v11

    move/from16 v22, v13

    goto :goto_36e

    :cond_333
    move/from16 v22, v13

    move/from16 v8, v28

    move/from16 v28, v11

    goto :goto_36e

    :cond_33a
    move/from16 v28, v11

    const/4 v11, 0x1

    goto :goto_36e

    :cond_33e
    :goto_33e
    and-int/lit8 v13, v5, 0x1

    move/from16 v28, v11

    const/4 v11, 0x1

    if-ne v13, v11, :cond_36e

    .line 197
    div-int/lit8 v13, v21, 0x3

    shl-int/2addr v13, v11

    add-int/2addr v13, v11

    add-int/lit8 v25, v8, 0x1

    aget-object v8, v17, v8

    aput-object v8, v14, v13

    goto :goto_35d

    :cond_350
    :goto_350
    move/from16 v28, v11

    const/4 v11, 0x1

    .line 194
    div-int/lit8 v13, v21, 0x3

    shl-int/2addr v13, v11

    add-int/2addr v13, v11

    add-int/lit8 v25, v8, 0x1

    aget-object v8, v17, v8

    aput-object v8, v14, v13

    :goto_35d
    move v13, v12

    move/from16 v8, v25

    goto :goto_36f

    :cond_361
    :goto_361
    move/from16 v28, v11

    const/4 v11, 0x1

    .line 192
    div-int/lit8 v13, v21, 0x3

    shl-int/2addr v13, v11

    add-int/2addr v13, v11

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v25

    aput-object v25, v14, v13

    :cond_36e
    :goto_36e
    move v13, v12

    .line 203
    :goto_36f
    invoke-virtual {v6, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v11

    long-to-int v9, v11

    and-int/lit8 v11, v5, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3c9

    const/16 v11, 0x11

    if-gt v3, v11, :cond_3c9

    add-int/lit8 v11, v2, 0x1

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v12, 0xd800

    if-lt v2, v12, :cond_3a3

    and-int/lit16 v2, v2, 0x1fff

    const/16 v19, 0xd

    :goto_38c
    add-int/lit8 v29, v11, 0x1

    .line 209
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v12, :cond_39e

    and-int/lit16 v11, v11, 0x1fff

    shl-int v11, v11, v19

    or-int/2addr v2, v11

    add-int/lit8 v19, v19, 0xd

    move/from16 v11, v29

    goto :goto_38c

    :cond_39e
    shl-int v11, v11, v19

    or-int/2addr v2, v11

    move/from16 v11, v29

    :cond_3a3
    const/16 v19, 0x1

    shl-int/lit8 v25, v16, 0x1

    .line 214
    div-int/lit8 v29, v2, 0x20

    add-int v25, v25, v29

    .line 215
    aget-object v12, v17, v25

    move-object/from16 v31, v1

    .line 216
    instance-of v1, v12, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3b6

    .line 217
    check-cast v12, Ljava/lang/reflect/Field;

    goto :goto_3be

    .line 218
    :cond_3b6
    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 219
    aput-object v12, v17, v25

    :goto_3be
    move-object v1, v7

    move/from16 v25, v8

    .line 220
    invoke-virtual {v6, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    .line 221
    rem-int/lit8 v2, v2, 0x20

    goto :goto_3d3

    :cond_3c9
    move-object/from16 v31, v1

    move-object v1, v7

    move/from16 v25, v8

    const/16 v19, 0x1

    move v11, v2

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_3d3
    const/16 v7, 0x12

    if-lt v3, v7, :cond_3e1

    const/16 v7, 0x31

    if-gt v3, v7, :cond_3e1

    add-int/lit8 v7, v23, 0x1

    .line 226
    aput v9, v15, v23

    move/from16 v23, v7

    :cond_3e1
    move v12, v11

    :goto_3e2
    add-int/lit8 v7, v21, 0x1

    .line 227
    aput v13, v10, v21

    add-int/lit8 v11, v7, 0x1

    and-int/lit16 v13, v4, 0x200

    if-eqz v13, :cond_3ef

    const/high16 v13, 0x20000000

    goto :goto_3f0

    :cond_3ef
    const/4 v13, 0x0

    :goto_3f0
    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_3f7

    const/high16 v4, 0x10000000

    goto :goto_3f8

    :cond_3f7
    const/4 v4, 0x0

    :goto_3f8
    or-int/2addr v4, v13

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v3, v4

    or-int/2addr v3, v9

    .line 230
    aput v3, v10, v7

    add-int/lit8 v21, v11, 0x1

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v2, v8

    .line 231
    aput v2, v10, v11

    move-object v7, v1

    move/from16 v13, v18

    move/from16 v3, v24

    move/from16 v18, v25

    move/from16 v2, v26

    move/from16 v11, v27

    move/from16 v9, v28

    move/from16 v8, v30

    move-object/from16 v1, v31

    const/4 v4, 0x1

    goto/16 :goto_1c0

    :cond_41a
    move/from16 v24, v3

    move/from16 v28, v9

    move/from16 v27, v11

    move/from16 v18, v13

    .line 233
    new-instance v1, Lcom/google/android/gms/internal/drive/zzlu;

    .line 234
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzme;->zzee()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object v0

    const/4 v12, 0x0

    move-object v5, v1

    move-object v6, v10

    move-object v7, v14

    move/from16 v8, v28

    move/from16 v9, v18

    move-object v10, v0

    move-object v13, v15

    move/from16 v14, v24

    move/from16 v15, v20

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lcom/google/android/gms/internal/drive/zzlu;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/drive/zzlq;ZZ[IIILcom/google/android/gms/internal/drive/zzly;Lcom/google/android/gms/internal/drive/zzla;Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzll;)V

    return-object v1

    .line 236
    :cond_444
    check-cast v0, Lcom/google/android/gms/internal/drive/zzms;

    .line 237
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzms;->zzec()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzsg:I

    .line 238
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    return-void
.end method

.method private final zza(IILjava/util/Map;Lcom/google/android/gms/internal/drive/zzko;Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzmx;)Ljava/lang/Object;
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
            "Lcom/google/android/gms/internal/drive/zzko;",
            "TUB;",
            "Lcom/google/android/gms/internal/drive/zzmx<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 3368
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    .line 3369
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzlu;->zzaq(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/drive/zzll;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzlj;

    move-result-object p1

    .line 3370
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_12
    :goto_12
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 3371
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3372
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/android/gms/internal/drive/zzko;->zzan(I)Z

    move-result v1

    if-nez v1, :cond_12

    if-nez p5, :cond_34

    .line 3374
    invoke-virtual {p6}, Lcom/google/android/gms/internal/drive/zzmx;->zzez()Ljava/lang/Object;

    move-result-object p5

    .line 3376
    :cond_34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/drive/zzli;->zza(Lcom/google/android/gms/internal/drive/zzlj;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 3377
    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zzjc;->zzu(I)Lcom/google/android/gms/internal/drive/zzjk;

    move-result-object v1

    .line 3378
    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzjk;->zzby()Lcom/google/android/gms/internal/drive/zzjr;

    move-result-object v2

    .line 3379
    :try_start_48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/android/gms/internal/drive/zzli;->zza(Lcom/google/android/gms/internal/drive/zzjr;Lcom/google/android/gms/internal/drive/zzlj;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_53} :catch_5e

    .line 3383
    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzjk;->zzbx()Lcom/google/android/gms/internal/drive/zzjc;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/android/gms/internal/drive/zzmx;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/drive/zzjc;)V

    .line 3384
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    :catch_5e
    move-exception p1

    .line 3382
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_65
    return-object p5
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

    .line 239
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 241
    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 242
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 243
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 246
    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 247
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 248
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

.method private static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3458
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 3459
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILjava/lang/String;)V

    return-void

    .line 3460
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILcom/google/android/gms/internal/drive/zzjc;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/drive/zzmx;Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/drive/zzmx<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/drive/zzns;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2487
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->zzr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzmx;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/drive/zzns;ILjava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/drive/zzns;",
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

    .line 2482
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    .line 2483
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/drive/zzlu;->zzaq(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/drive/zzll;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzlj;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    .line 2484
    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/drive/zzll;->zzi(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 2485
    invoke-interface {p1, p2, p4, p3}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILcom/google/android/gms/internal/drive/zzlj;Ljava/util/Map;)V

    :cond_15
    return-void
.end method

.method private final zza(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 541
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 544
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 546
    :cond_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 547
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_27

    if-eqz p2, :cond_27

    .line 549
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/drive/zzkm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 550
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 551
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    return-void

    :cond_27
    if-eqz p2, :cond_2f

    .line 553
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 554
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    :cond_2f
    return-void
.end method

.method private final zza(Ljava/lang/Object;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 3473
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_e2

    .line 3474
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_f6

    .line 3504
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3503
    :pswitch_20
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_27

    return v3

    :cond_27
    return v2

    .line 3502
    :pswitch_28
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_31

    return v3

    :cond_31
    return v2

    .line 3501
    :pswitch_32
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_39

    return v3

    :cond_39
    return v2

    .line 3500
    :pswitch_3a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_43

    return v3

    :cond_43
    return v2

    .line 3499
    :pswitch_44
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4b

    return v3

    :cond_4b
    return v2

    .line 3498
    :pswitch_4c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_53

    return v3

    :cond_53
    return v2

    .line 3497
    :pswitch_54
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5b

    return v3

    :cond_5b
    return v2

    .line 3496
    :pswitch_5c
    sget-object p2, Lcom/google/android/gms/internal/drive/zzjc;->zznq:Lcom/google/android/gms/internal/drive/zzjc;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/drive/zzjc;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    return v3

    :cond_69
    return v2

    .line 3495
    :pswitch_6a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_71

    return v3

    :cond_71
    return v2

    .line 3489
    :pswitch_72
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 3490
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_84

    .line 3491
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_83

    return v3

    :cond_83
    return v2

    .line 3492
    :cond_84
    instance-of p2, p1, Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz p2, :cond_92

    .line 3493
    sget-object p2, Lcom/google/android/gms/internal/drive/zzjc;->zznq:Lcom/google/android/gms/internal/drive/zzjc;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/drive/zzjc;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    return v3

    :cond_91
    return v2

    .line 3494
    :cond_92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3488
    :pswitch_98
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzl(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 3487
    :pswitch_9d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_a4

    return v3

    :cond_a4
    return v2

    .line 3486
    :pswitch_a5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_ae

    return v3

    :cond_ae
    return v2

    .line 3485
    :pswitch_af
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_b6

    return v3

    :cond_b6
    return v2

    .line 3484
    :pswitch_b7
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_c0

    return v3

    :cond_c0
    return v2

    .line 3483
    :pswitch_c1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_ca

    return v3

    :cond_ca
    return v2

    .line 3482
    :pswitch_cb
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzm(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_d5

    return v3

    :cond_d5
    return v2

    .line 3481
    :pswitch_d6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzn(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_e1

    return v3

    :cond_e1
    return v2

    .line 3505
    :cond_e2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zzat(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    .line 3507
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_f4

    return v3

    :cond_f4
    return v2

    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_d6
        :pswitch_cb
        :pswitch_c1
        :pswitch_b7
        :pswitch_af
        :pswitch_a5
        :pswitch_9d
        :pswitch_98
        :pswitch_72
        :pswitch_6a
        :pswitch_5c
        :pswitch_54
        :pswitch_4c
        :pswitch_44
        :pswitch_3a
        :pswitch_32
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 3517
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zzat(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 3518
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/Object;III)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    .line 3470
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    if-eqz v0, :cond_9

    .line 3471
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_9
    and-int p1, p3, p4

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method private static zza(Ljava/lang/Object;ILcom/google/android/gms/internal/drive/zzmf;)Z
    .registers 5

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 3456
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 3457
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/drive/zzmf;->zzp(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final zzap(I)Lcom/google/android/gms/internal/drive/zzmf;
    .registers 5

    .line 3002
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 3003
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzue:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/drive/zzmf;

    if-eqz v0, :cond_d

    return-object v0

    .line 3006
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->zzej()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzue:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/drive/zzmd;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    .line 3007
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzue:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzaq(I)Ljava/lang/Object;
    .registers 3

    .line 3009
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzue:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzar(I)Lcom/google/android/gms/internal/drive/zzko;
    .registers 3

    .line 3010
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzue:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzko;

    return-object p1
.end method

.method private final zzas(I)I
    .registers 3

    .line 3462
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private final zzat(I)I
    .registers 3

    .line 3463
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private final zzau(I)I
    .registers 3

    .line 3522
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuf:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzug:I

    if-gt p1, v0, :cond_e

    const/4 v0, 0x0

    .line 3523
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzq(II)I

    move-result p1

    return p1

    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method private final zzb(Ljava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 3508
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    if-eqz v0, :cond_5

    return-void

    .line 3510
    :cond_5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zzat(I)I

    move-result p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    .line 3514
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    .line 3515
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 3519
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zzat(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 3520
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/drive/zzns;",
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

    .line 2157
    iget-boolean v3, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v3, :cond_23

    .line 2158
    iget-object v3, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/drive/zzjy;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object v3

    .line 2160
    iget-object v5, v3, Lcom/google/android/gms/internal/drive/zzkb;->zzos:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/drive/zzmi;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_23

    .line 2162
    invoke-virtual {v3}, Lcom/google/android/gms/internal/drive/zzkb;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_25

    :cond_23
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_25
    const/4 v6, -0x1

    .line 2166
    iget-object v7, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v7, v7

    .line 2167
    sget-object v8, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    move-object v10, v5

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_2e
    if-ge v5, v7, :cond_4af

    .line 2169
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v12

    .line 2171
    iget-object v13, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v14, v13, v5

    const/high16 v15, 0xff00000

    and-int/2addr v15, v12

    ushr-int/lit8 v15, v15, 0x14

    .line 2177
    iget-boolean v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    const v16, 0xfffff

    if-nez v4, :cond_64

    const/16 v4, 0x11

    if-gt v15, v4, :cond_64

    add-int/lit8 v4, v5, 0x2

    .line 2178
    aget v4, v13, v4

    and-int v13, v4, v16

    if-eq v13, v6, :cond_58

    move-object/from16 v17, v10

    int-to-long v9, v13

    .line 2182
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    goto :goto_5b

    :cond_58
    move-object/from16 v17, v10

    move v13, v6

    :goto_5b
    ushr-int/lit8 v4, v4, 0x14

    const/4 v6, 0x1

    shl-int v9, v6, v4

    move v6, v13

    move-object/from16 v10, v17

    goto :goto_69

    :cond_64
    move-object/from16 v17, v10

    move-object/from16 v10, v17

    const/4 v9, 0x0

    :goto_69
    if-eqz v10, :cond_88

    .line 2184
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Ljava/util/Map$Entry;)I

    move-result v4

    if-gt v4, v14, :cond_88

    .line 2185
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v4, v2, v10}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Lcom/google/android/gms/internal/drive/zzns;Ljava/util/Map$Entry;)V

    .line 2186
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v10, v4

    goto :goto_69

    :cond_86
    const/4 v10, 0x0

    goto :goto_69

    :cond_88
    and-int v4, v12, v16

    int-to-long v12, v4

    packed-switch v15, :pswitch_data_4d0

    :cond_8e
    :goto_8e
    const/4 v15, 0x0

    goto/16 :goto_4ab

    .line 2471
    :pswitch_91
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2473
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v9

    .line 2474
    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto :goto_8e

    .line 2469
    :pswitch_a3
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2470
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IJ)V

    goto :goto_8e

    .line 2467
    :pswitch_b1
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2468
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zze(II)V

    goto :goto_8e

    .line 2465
    :pswitch_bf
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2466
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/drive/zzns;->zzj(IJ)V

    goto :goto_8e

    .line 2463
    :pswitch_cd
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2464
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzm(II)V

    goto :goto_8e

    .line 2461
    :pswitch_db
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2462
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzn(II)V

    goto :goto_8e

    .line 2459
    :pswitch_e9
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2460
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzd(II)V

    goto :goto_8e

    .line 2457
    :pswitch_f7
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2458
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILcom/google/android/gms/internal/drive/zzjc;)V

    goto :goto_8e

    .line 2453
    :pswitch_107
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2454
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2455
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_8e

    .line 2451
    :pswitch_11a
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2452
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_8e

    .line 2449
    :pswitch_129
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2450
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/drive/zzlu;->zzi(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IZ)V

    goto/16 :goto_8e

    .line 2447
    :pswitch_138
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2448
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzf(II)V

    goto/16 :goto_8e

    .line 2445
    :pswitch_147
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2446
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/drive/zzns;->zzc(IJ)V

    goto/16 :goto_8e

    .line 2443
    :pswitch_156
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2444
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzc(II)V

    goto/16 :goto_8e

    .line 2441
    :pswitch_165
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2442
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/drive/zzns;->zza(IJ)V

    goto/16 :goto_8e

    .line 2439
    :pswitch_174
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2440
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/drive/zzns;->zzi(IJ)V

    goto/16 :goto_8e

    .line 2437
    :pswitch_183
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2438
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/drive/zzlu;->zzf(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zza(IF)V

    goto/16 :goto_8e

    .line 2435
    :pswitch_192
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2436
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/drive/zzlu;->zze(Ljava/lang/Object;J)D

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/drive/zzns;->zza(ID)V

    goto/16 :goto_8e

    .line 2433
    :pswitch_1a1
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v14, v4, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Lcom/google/android/gms/internal/drive/zzns;ILjava/lang/Object;I)V

    goto/16 :goto_8e

    .line 2427
    :pswitch_1aa
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2429
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2430
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v12

    .line 2431
    invoke-static {v4, v9, v2, v12}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_8e

    .line 2421
    :pswitch_1bd
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2422
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v14, 0x1

    .line 2423
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zze(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_1cd
    const/4 v14, 0x1

    .line 2415
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2416
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2417
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_1dd
    const/4 v14, 0x1

    .line 2409
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2410
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2411
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_1ed
    const/4 v14, 0x1

    .line 2403
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2404
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2405
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_1fd
    const/4 v14, 0x1

    .line 2397
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2398
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2399
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_20d
    const/4 v14, 0x1

    .line 2391
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2392
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2393
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_21d
    const/4 v14, 0x1

    .line 2385
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2386
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2387
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_22d
    const/4 v14, 0x1

    .line 2379
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2380
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2381
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_23d
    const/4 v14, 0x1

    .line 2373
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2374
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2375
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_24d
    const/4 v14, 0x1

    .line 2367
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2368
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2369
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_25d
    const/4 v14, 0x1

    .line 2361
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2362
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2363
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_26d
    const/4 v14, 0x1

    .line 2355
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2356
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2357
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_27d
    const/4 v14, 0x1

    .line 2349
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2350
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2351
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_28d
    const/4 v14, 0x1

    .line 2343
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2344
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2345
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    .line 2337
    :pswitch_29d
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2338
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v14, 0x0

    .line 2339
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zze(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_2ad
    const/4 v14, 0x0

    .line 2331
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2332
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2333
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_2bd
    const/4 v14, 0x0

    .line 2325
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2326
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2327
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_2cd
    const/4 v14, 0x0

    .line 2319
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2320
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2321
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_2dd
    const/4 v14, 0x0

    .line 2313
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2314
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2315
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    :pswitch_2ed
    const/4 v14, 0x0

    .line 2307
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2308
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2309
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_8e

    .line 2301
    :pswitch_2fd
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2302
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2303
    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_8e

    .line 2293
    :pswitch_30c
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2295
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2296
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v12

    .line 2297
    invoke-static {v4, v9, v2, v12}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_8e

    .line 2287
    :pswitch_31f
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2288
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2289
    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_8e

    .line 2281
    :pswitch_32e
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2282
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v15, 0x0

    .line 2283
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/drive/zzmh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4ab

    :pswitch_33e
    const/4 v15, 0x0

    .line 2275
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2276
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2277
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/drive/zzmh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4ab

    :pswitch_34e
    const/4 v15, 0x0

    .line 2269
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2270
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2271
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/drive/zzmh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4ab

    :pswitch_35e
    const/4 v15, 0x0

    .line 2263
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2264
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2265
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4ab

    :pswitch_36e
    const/4 v15, 0x0

    .line 2257
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2258
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2259
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4ab

    :pswitch_37e
    const/4 v15, 0x0

    .line 2251
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2252
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2253
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4ab

    :pswitch_38e
    const/4 v15, 0x0

    .line 2245
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2246
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2247
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4ab

    :pswitch_39e
    const/4 v15, 0x0

    .line 2239
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v5

    .line 2240
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2241
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_4ab

    :pswitch_3ae
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2235
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v9

    .line 2236
    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_4ab

    :pswitch_3c0
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2232
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IJ)V

    goto/16 :goto_4ab

    :pswitch_3ce
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2230
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zze(II)V

    goto/16 :goto_4ab

    :pswitch_3dc
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2228
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/drive/zzns;->zzj(IJ)V

    goto/16 :goto_4ab

    :pswitch_3ea
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2226
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzm(II)V

    goto/16 :goto_4ab

    :pswitch_3f8
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2224
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzn(II)V

    goto/16 :goto_4ab

    :pswitch_406
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2222
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzd(II)V

    goto/16 :goto_4ab

    :pswitch_414
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2220
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILcom/google/android/gms/internal/drive/zzjc;)V

    goto/16 :goto_4ab

    :pswitch_424
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2216
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2217
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_4ab

    :pswitch_436
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2214
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_4ab

    :pswitch_444
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2211
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/drive/zznd;->zzl(Ljava/lang/Object;J)Z

    move-result v4

    .line 2212
    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IZ)V

    goto :goto_4ab

    :pswitch_451
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2208
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzf(II)V

    goto :goto_4ab

    :pswitch_45e
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2206
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/drive/zzns;->zzc(IJ)V

    goto :goto_4ab

    :pswitch_46b
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2204
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zzc(II)V

    goto :goto_4ab

    :pswitch_478
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2202
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/drive/zzns;->zza(IJ)V

    goto :goto_4ab

    :pswitch_485
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2200
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/drive/zzns;->zzi(IJ)V

    goto :goto_4ab

    :pswitch_492
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2197
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/drive/zznd;->zzm(Ljava/lang/Object;J)F

    move-result v4

    .line 2198
    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/drive/zzns;->zza(IF)V

    goto :goto_4ab

    :pswitch_49f
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_4ab

    .line 2193
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/drive/zznd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v12

    .line 2194
    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/drive/zzns;->zza(ID)V

    :cond_4ab
    :goto_4ab
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_2e

    :cond_4af
    move-object/from16 v17, v10

    move-object/from16 v4, v17

    :goto_4b3
    if-eqz v4, :cond_4c9

    .line 2477
    iget-object v5, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Lcom/google/android/gms/internal/drive/zzns;Ljava/util/Map$Entry;)V

    .line 2478
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    goto :goto_4b3

    :cond_4c7
    const/4 v4, 0x0

    goto :goto_4b3

    .line 2479
    :cond_4c9
    iget-object v3, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Lcom/google/android/gms/internal/drive/zzmx;Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    return-void

    nop

    :pswitch_data_4d0
    .packed-switch 0x0
        :pswitch_49f
        :pswitch_492
        :pswitch_485
        :pswitch_478
        :pswitch_46b
        :pswitch_45e
        :pswitch_451
        :pswitch_444
        :pswitch_436
        :pswitch_424
        :pswitch_414
        :pswitch_406
        :pswitch_3f8
        :pswitch_3ea
        :pswitch_3dc
        :pswitch_3ce
        :pswitch_3c0
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

    .line 556
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v0

    .line 558
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 563
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 565
    :cond_14
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 566
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_2b

    if-eqz p2, :cond_2b

    .line 568
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/drive/zzkm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 569
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 570
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;II)V

    return-void

    :cond_2b
    if-eqz p2, :cond_33

    .line 572
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 573
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;II)V

    :cond_33
    return-void
.end method

.method private final zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 3469
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private static zzd(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1207
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static zze(Ljava/lang/Object;J)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 3464
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzf(Ljava/lang/Object;J)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 3465
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzg(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 3466
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zzh(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 3467
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzi(Ljava/lang/Object;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 3468
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;
    .registers 3

    .line 2489
    check-cast p0, Lcom/google/android/gms/internal/drive/zzkk;

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    .line 2490
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmy;->zzfa()Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 2491
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmy;->zzfb()Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v0

    .line 2492
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    :cond_10
    return-object v0
.end method

.method private final zzp(II)I
    .registers 4

    .line 3525
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuf:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzug:I

    if-gt p1, v0, :cond_d

    .line 3526
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zzq(II)I

    move-result p1

    return p1

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method private final zzq(II)I
    .registers 7

    .line 3528
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-gt p2, v0, :cond_1e

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 3533
    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_16

    return v2

    :cond_16
    if-ge p1, v3, :cond_1b

    add-int/lit8 v0, v1, -0x1

    goto :goto_7

    :cond_1b
    add-int/lit8 p2, v1, 0x1

    goto :goto_7

    :cond_1e
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1c9

    .line 253
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_1f2

    goto/16 :goto_1c2

    .line 327
    :pswitch_1c
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzat(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 328
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    .line 329
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_1c1

    .line 331
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 332
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 324
    :pswitch_3c
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 325
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1c2

    .line 321
    :pswitch_4a
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 322
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1c2

    .line 316
    :pswitch_58
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 317
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 318
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 313
    :pswitch_6e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 314
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto/16 :goto_1c1

    .line 310
    :pswitch_82
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 311
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 307
    :pswitch_94
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 308
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto/16 :goto_1c1

    .line 304
    :pswitch_a8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 305
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 301
    :pswitch_ba
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 302
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 298
    :pswitch_cc
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 299
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 294
    :pswitch_de
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 295
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 296
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 290
    :pswitch_f4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 291
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 292
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 286
    :pswitch_10a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 287
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 288
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 283
    :pswitch_120
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 284
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzl(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzl(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 280
    :pswitch_132
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 281
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 277
    :pswitch_144
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 278
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto :goto_1c1

    .line 274
    :pswitch_157
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 275
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto :goto_1c1

    .line 271
    :pswitch_168
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 272
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto :goto_1c1

    .line 268
    :pswitch_17b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 269
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto :goto_1c1

    .line 264
    :pswitch_18e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 265
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzm(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 266
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzm(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto :goto_1c1

    .line 260
    :pswitch_1a7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 261
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 262
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzn(Ljava/lang/Object;J)D

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

    .line 338
    :cond_1c9
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->zzr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 339
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/drive/zzmx;->zzr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dc

    return v1

    .line 342
    :cond_1dc
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v0, :cond_1f1

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzjy;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object p1

    .line 344
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/drive/zzjy;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object p2

    .line 345
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzkb;->equals(Ljava/lang/Object;)Z

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

.method public final hashCode(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v0, :cond_22c

    .line 350
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v3

    .line 352
    iget-object v4, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

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

    .line 448
    :pswitch_20
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    .line 449
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 450
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 446
    :pswitch_32
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 447
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto/16 :goto_227

    .line 444
    :pswitch_44
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 445
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 442
    :pswitch_52
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 443
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto/16 :goto_227

    .line 440
    :pswitch_64
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 441
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 438
    :pswitch_72
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 439
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 436
    :pswitch_80
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 437
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 434
    :pswitch_8e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 435
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 430
    :pswitch_a0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    .line 431
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 432
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 427
    :pswitch_b2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 429
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 425
    :pswitch_c6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 426
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzi(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzkm;->zze(Z)I

    move-result v3

    goto/16 :goto_227

    .line 423
    :pswitch_d8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 424
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 421
    :pswitch_e6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 422
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto/16 :goto_227

    .line 419
    :pswitch_f8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 420
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 417
    :pswitch_106
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 418
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto/16 :goto_227

    .line 415
    :pswitch_118
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 416
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto/16 :goto_227

    .line 413
    :pswitch_12a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 414
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzf(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_227

    .line 410
    :pswitch_13c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 412
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zze(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_152
    mul-int/lit8 v2, v2, 0x35

    .line 408
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    :pswitch_15e
    mul-int/lit8 v2, v2, 0x35

    .line 406
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 401
    :pswitch_16a
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c3

    .line 403
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1c3

    :pswitch_175
    mul-int/lit8 v2, v2, 0x35

    .line 398
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_181
    mul-int/lit8 v2, v2, 0x35

    .line 396
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_189
    mul-int/lit8 v2, v2, 0x35

    .line 394
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_195
    mul-int/lit8 v2, v2, 0x35

    .line 392
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_19d
    mul-int/lit8 v2, v2, 0x35

    .line 390
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_1a5
    mul-int/lit8 v2, v2, 0x35

    .line 388
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_1ad
    mul-int/lit8 v2, v2, 0x35

    .line 386
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 381
    :pswitch_1b9
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c3

    .line 383
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1c3
    :goto_1c3
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_228

    :pswitch_1c7
    mul-int/lit8 v2, v2, 0x35

    .line 378
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_227

    :pswitch_1d4
    mul-int/lit8 v2, v2, 0x35

    .line 376
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzl(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzkm;->zze(Z)I

    move-result v3

    goto :goto_227

    :pswitch_1df
    mul-int/lit8 v2, v2, 0x35

    .line 374
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_227

    :pswitch_1e6
    mul-int/lit8 v2, v2, 0x35

    .line 372
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto :goto_227

    :pswitch_1f1
    mul-int/lit8 v2, v2, 0x35

    .line 370
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_227

    :pswitch_1f8
    mul-int/lit8 v2, v2, 0x35

    .line 368
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto :goto_227

    :pswitch_203
    mul-int/lit8 v2, v2, 0x35

    .line 366
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    goto :goto_227

    :pswitch_20e
    mul-int/lit8 v2, v2, 0x35

    .line 364
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzm(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_227

    :pswitch_219
    mul-int/lit8 v2, v2, 0x35

    .line 361
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 362
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zzu(J)I

    move-result v3

    :goto_227
    add-int/2addr v2, v3

    :cond_228
    :goto_228
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_5

    :cond_22c
    mul-int/lit8 v2, v2, 0x35

    .line 452
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->zzr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 453
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v0, :cond_24a

    mul-int/lit8 v2, v2, 0x35

    .line 454
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzjy;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzkb;->hashCode()I

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

.method public final newInstance()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzup:Lcom/google/android/gms/internal/drive/zzly;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuh:Lcom/google/android/gms/internal/drive/zzlq;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/drive/zzly;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/drive/zziz;)I
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/drive/zziz;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    .line 3011
    sget-object v10, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_17
    const v17, 0xfffff

    if-ge v0, v13, :cond_47c

    add-int/lit8 v3, v0, 0x1

    .line 3018
    aget-byte v0, v12, v0

    if-gez v0, :cond_2b

    .line 3020
    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3021
    iget v3, v9, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    move v4, v0

    move v5, v3

    goto :goto_2d

    :cond_2b
    move v5, v0

    move v4, v3

    :goto_2d
    ushr-int/lit8 v3, v5, 0x3

    and-int/lit8 v0, v5, 0x7

    const/4 v8, 0x3

    if-le v3, v1, :cond_3a

    .line 3025
    div-int/2addr v2, v8

    invoke-direct {v15, v3, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzp(II)I

    move-result v1

    goto :goto_3e

    .line 3026
    :cond_3a
    invoke-direct {v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zzau(I)I

    move-result v1

    :goto_3e
    move v2, v1

    const/4 v1, -0x1

    if-ne v2, v1, :cond_51

    move/from16 v25, v3

    move v2, v4

    move/from16 v22, v6

    move/from16 v18, v7

    move-object/from16 v27, v10

    move v7, v11

    const/16 v19, 0x0

    move v6, v5

    goto/16 :goto_3e5

    .line 3030
    :cond_51
    iget-object v1, v15, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    add-int/lit8 v19, v2, 0x1

    aget v8, v1, v19

    const/high16 v19, 0xff00000

    and-int v19, v8, v19

    ushr-int/lit8 v11, v19, 0x14

    move/from16 v19, v5

    and-int v5, v8, v17

    int-to-long v12, v5

    const/16 v5, 0x11

    move/from16 v20, v8

    if-gt v11, v5, :cond_2dc

    add-int/lit8 v5, v2, 0x2

    .line 3038
    aget v1, v1, v5

    ushr-int/lit8 v5, v1, 0x14

    const/4 v8, 0x1

    shl-int v22, v8, v5

    and-int v1, v1, v17

    if-eq v1, v7, :cond_83

    const/4 v5, -0x1

    if-eq v7, v5, :cond_7c

    int-to-long v8, v7

    .line 3043
    invoke-virtual {v10, v14, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7c
    int-to-long v6, v1

    .line 3045
    invoke-virtual {v10, v14, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v7, v1

    goto :goto_84

    :cond_83
    const/4 v5, -0x1

    :goto_84
    const/4 v1, 0x5

    packed-switch v11, :pswitch_data_4ee

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move/from16 v8, v19

    const/16 v19, -0x1

    :goto_94
    move v7, v4

    goto/16 :goto_2cc

    :pswitch_97
    const/4 v8, 0x3

    if-ne v0, v8, :cond_dd

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v8, v0, 0x4

    .line 3132
    invoke-direct {v15, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    move-object/from16 v1, p2

    move v9, v2

    move v2, v4

    move v11, v3

    move/from16 v3, p4

    move v4, v8

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v5, p6

    .line 3133
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;[BIIILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_c0

    move-object/from16 v5, p6

    .line 3135
    iget-object v1, v5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_cf

    :cond_c0
    move-object/from16 v5, p6

    .line 3137
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v5, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    .line 3138
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/drive/zzkm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3139
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_cf
    or-int v6, v6, v22

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v8

    move v2, v9

    move v1, v11

    move/from16 v11, p5

    move-object v9, v5

    goto/16 :goto_17

    :cond_dd
    move v9, v2

    move v11, v3

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    goto/16 :goto_245

    :pswitch_e9
    move-object/from16 v5, p6

    move v9, v2

    move v11, v3

    move/from16 v8, v19

    const/16 v19, -0x1

    if-nez v0, :cond_111

    move-wide v2, v12

    move-object/from16 v12, p2

    .line 3123
    invoke-static {v12, v4, v5}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v13

    .line 3124
    iget-wide v0, v5, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    .line 3125
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/drive/zzjo;->zzk(J)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 p3, v13

    move-object v13, v5

    move-wide/from16 v4, v17

    .line 3126
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v22

    move/from16 v0, p3

    goto/16 :goto_2c2

    :cond_111
    move-object/from16 v12, p2

    move-object v13, v5

    goto/16 :goto_245

    :pswitch_116
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v0, :cond_245

    .line 3116
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3117
    iget v1, v13, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    .line 3118
    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zzjo;->zzw(I)I

    move-result v1

    .line 3119
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_17a

    :pswitch_131
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v0, :cond_245

    .line 3107
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3108
    iget v1, v13, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    .line 3109
    invoke-direct {v15, v9}, Lcom/google/android/gms/internal/drive/zzlu;->zzar(I)Lcom/google/android/gms/internal/drive/zzko;

    move-result-object v4

    if-eqz v4, :cond_15f

    .line 3110
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/drive/zzko;->zzan(I)Z

    move-result v4

    if-eqz v4, :cond_151

    goto :goto_15f

    .line 3113
    :cond_151
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/drive/zzlu;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lcom/google/android/gms/internal/drive/zzmy;->zzb(ILjava/lang/Object;)V

    goto/16 :goto_2c2

    .line 3111
    :cond_15f
    :goto_15f
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_17a

    :pswitch_163
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x2

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_245

    .line 3102
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/drive/zziy;->zze([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3103
    iget-object v1, v13, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_17a
    or-int v6, v6, v22

    goto/16 :goto_2c2

    :pswitch_17e
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x2

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_1b0

    .line 3091
    invoke-direct {v15, v9}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    move/from16 v5, p4

    .line 3092
    invoke-static {v0, v12, v4, v5, v13}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;[BIILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_1a1

    .line 3094
    iget-object v1, v13, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_219

    .line 3096
    :cond_1a1
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v13, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    .line 3097
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/drive/zzkm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3098
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_219

    :cond_1b0
    move/from16 v5, p4

    goto/16 :goto_245

    :pswitch_1b4
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x2

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_245

    const/high16 v0, 0x20000000

    and-int v0, v20, v0

    if-nez v0, :cond_1cf

    .line 3084
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    goto :goto_1d3

    .line 3085
    :cond_1cf
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3086
    :goto_1d3
    iget-object v1, v13, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_219

    :pswitch_1d9
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v0, :cond_245

    .line 3078
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    move/from16 p3, v0

    .line 3079
    iget-wide v0, v13, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    const-wide/16 v20, 0x0

    cmp-long v4, v0, v20

    if-eqz v4, :cond_1f8

    const/4 v0, 0x1

    goto :goto_1f9

    :cond_1f8
    const/4 v0, 0x0

    :goto_1f9
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JZ)V

    or-int v6, v6, v22

    move/from16 v0, p3

    goto :goto_21b

    :pswitch_201
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_245

    .line 3073
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/drive/zziy;->zza([BI)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    :goto_219
    or-int v6, v6, v22

    :goto_21b
    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    move/from16 v11, p5

    move v13, v5

    goto/16 :goto_17

    :pswitch_224
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x1

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_245

    .line 3068
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BI)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 p3, v7

    move v7, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_2bc

    :cond_245
    :goto_245
    move/from16 p3, v7

    goto/16 :goto_94

    :pswitch_249
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-nez v0, :cond_2cc

    .line 3063
    invoke-static {v12, v7, v13}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3064
    iget v1, v13, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_2be

    :pswitch_264
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-nez v0, :cond_2cc

    .line 3058
    invoke-static {v12, v7, v13}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v7

    .line 3059
    iget-wide v4, v13, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v22

    move v0, v7

    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    move/from16 v7, p3

    goto :goto_2c6

    :pswitch_28a
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-ne v0, v1, :cond_2cc

    .line 3053
    invoke-static {v12, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v7, 0x4

    goto :goto_2be

    :pswitch_2a4
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x1

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-ne v0, v1, :cond_2cc

    .line 3048
    invoke-static {v12, v7}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JD)V

    :goto_2bc
    add-int/lit8 v0, v7, 0x8

    :goto_2be
    or-int v6, v6, v22

    move/from16 v7, p3

    :goto_2c2
    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    :goto_2c6
    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_17

    :cond_2cc
    :goto_2cc
    move/from16 v18, p3

    move/from16 v22, v6

    move v2, v7

    move v6, v8

    move/from16 v19, v9

    move-object/from16 v27, v10

    move/from16 v25, v11

    move/from16 v7, p5

    goto/16 :goto_3e5

    :cond_2dc
    move v5, v3

    move/from16 v18, v7

    move/from16 v8, v19

    const/16 v19, -0x1

    move v7, v4

    move-wide/from16 v28, v12

    move-object/from16 v12, p2

    move-object v13, v9

    move v9, v2

    move-wide/from16 v2, v28

    const/16 v1, 0x1b

    if-ne v11, v1, :cond_341

    const/4 v1, 0x2

    if-ne v0, v1, :cond_334

    .line 3144
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkp;

    .line 3145
    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzkp;->zzbo()Z

    move-result v1

    if-nez v1, :cond_311

    .line 3146
    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzkp;->size()I

    move-result v1

    if-nez v1, :cond_308

    const/16 v1, 0xa

    goto :goto_30a

    :cond_308
    shl-int/lit8 v1, v1, 0x1

    .line 3149
    :goto_30a
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/drive/zzkp;->zzr(I)Lcom/google/android/gms/internal/drive/zzkp;

    move-result-object v0

    .line 3150
    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_311
    move-object v11, v0

    .line 3152
    invoke-direct {v15, v9}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    move v1, v8

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, p4

    move v7, v5

    move-object v5, v11

    move/from16 v22, v6

    move-object/from16 v6, p6

    .line 3153
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;I[BIILcom/google/android/gms/internal/drive/zzkp;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    move/from16 v11, p5

    move v1, v7

    move v3, v8

    move v2, v9

    move-object v9, v13

    move/from16 v7, v18

    move/from16 v6, v22

    move/from16 v13, p4

    goto/16 :goto_17

    :cond_334
    move/from16 v22, v6

    move/from16 v25, v5

    move v15, v7

    move/from16 v26, v8

    move/from16 v19, v9

    move-object/from16 v27, v10

    goto/16 :goto_3be

    :cond_341
    move/from16 v22, v6

    move v6, v5

    const/16 v1, 0x31

    if-gt v11, v1, :cond_390

    move/from16 v5, v20

    int-to-long v4, v5

    move v1, v0

    move-object/from16 v0, p0

    move/from16 p3, v1

    move-object/from16 v1, p1

    move-wide/from16 v23, v2

    move-object/from16 v2, p2

    move v3, v7

    move-wide/from16 v20, v4

    move/from16 v4, p4

    move v5, v8

    move/from16 v25, v6

    move v15, v7

    move/from16 v7, p3

    move/from16 v26, v8

    move v8, v9

    move/from16 v19, v9

    move-object/from16 v27, v10

    move-wide/from16 v9, v20

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    .line 3158
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    if-ne v0, v15, :cond_376

    goto/16 :goto_3e1

    :cond_376
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v7, v18

    move/from16 v2, v19

    move/from16 v6, v22

    move/from16 v1, v25

    move/from16 v3, v26

    :goto_38c
    move-object/from16 v10, v27

    goto/16 :goto_17

    :cond_390
    move/from16 p3, v0

    move-wide/from16 v23, v2

    move/from16 v25, v6

    move v15, v7

    move/from16 v26, v8

    move/from16 v19, v9

    move-object/from16 v27, v10

    move/from16 v5, v20

    const/16 v0, 0x32

    if-ne v11, v0, :cond_3c4

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_3be

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    .line 3163
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    if-ne v0, v15, :cond_376

    goto :goto_3e1

    :cond_3be
    :goto_3be
    move/from16 v7, p5

    move v2, v15

    :goto_3c1
    move/from16 v6, v26

    goto :goto_3e5

    :cond_3c4
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v26

    move/from16 v6, v25

    move v9, v11

    move-wide/from16 v10, v23

    move/from16 v12, v19

    move-object/from16 v13, p6

    .line 3168
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    if-ne v0, v15, :cond_462

    :goto_3e1
    move/from16 v7, p5

    move v2, v0

    goto :goto_3c1

    :goto_3e5
    if-ne v6, v7, :cond_3f2

    if-nez v7, :cond_3ea

    goto :goto_3f2

    :cond_3ea
    move-object/from16 v8, p0

    move-object/from16 v11, p1

    move v9, v2

    move v10, v6

    goto/16 :goto_487

    :cond_3f2
    :goto_3f2
    move-object/from16 v8, p0

    .line 3171
    iget-boolean v0, v8, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v0, :cond_43a

    move-object/from16 v9, p6

    iget-object v0, v9, Lcom/google/android/gms/internal/drive/zziz;->zznn:Lcom/google/android/gms/internal/drive/zzjx;

    .line 3172
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzjx;->zzci()Lcom/google/android/gms/internal/drive/zzjx;

    move-result-object v1

    if-eq v0, v1, :cond_437

    .line 3173
    iget-object v0, v8, Lcom/google/android/gms/internal/drive/zzlu;->zzuh:Lcom/google/android/gms/internal/drive/zzlq;

    .line 3175
    iget-object v1, v9, Lcom/google/android/gms/internal/drive/zziz;->zznn:Lcom/google/android/gms/internal/drive/zzjx;

    move/from16 v10, v25

    .line 3176
    invoke-virtual {v1, v0, v10}, Lcom/google/android/gms/internal/drive/zzjx;->zza(Lcom/google/android/gms/internal/drive/zzlq;I)Lcom/google/android/gms/internal/drive/zzkk$zzd;

    move-result-object v0

    if-nez v0, :cond_427

    .line 3179
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/drive/zzlu;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v4

    move v0, v6

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 3180
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BIILcom/google/android/gms/internal/drive/zzmy;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v6

    move v11, v7

    move-object v15, v8

    goto :goto_473

    :cond_427
    move-object/from16 v11, p1

    .line 3181
    move-object v0, v11

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk$zzc;->zzdg()Lcom/google/android/gms/internal/drive/zzkb;

    .line 3183
    iget-object v0, v0, Lcom/google/android/gms/internal/drive/zzkk$zzc;->zzrw:Lcom/google/android/gms/internal/drive/zzkb;

    .line 3184
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_437
    move-object/from16 v11, p1

    goto :goto_43e

    :cond_43a
    move-object/from16 v11, p1

    move-object/from16 v9, p6

    :goto_43e
    move/from16 v10, v25

    .line 3187
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/drive/zzlu;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v4

    move v0, v6

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 3188
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BIILcom/google/android/gms/internal/drive/zzmy;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v6

    move-object v15, v8

    move v1, v10

    move-object v14, v11

    move/from16 v2, v19

    move/from16 v6, v22

    move-object/from16 v10, v27

    move v11, v7

    move/from16 v7, v18

    goto/16 :goto_17

    :cond_462
    move/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move v3, v6

    :goto_473
    move v1, v10

    move/from16 v7, v18

    move/from16 v2, v19

    move/from16 v6, v22

    goto/16 :goto_38c

    :cond_47c
    move/from16 v22, v6

    move/from16 v18, v7

    move-object/from16 v27, v10

    move v7, v11

    move-object v11, v14

    move-object v8, v15

    move v9, v0

    move v10, v3

    :goto_487
    move/from16 v0, v18

    move/from16 v1, v22

    const/4 v2, -0x1

    if-eq v0, v2, :cond_494

    int-to-long v2, v0

    move-object/from16 v0, v27

    .line 3191
    invoke-virtual {v0, v11, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_494
    const/4 v0, 0x0

    .line 3193
    iget v1, v8, Lcom/google/android/gms/internal/drive/zzlu;->zzun:I

    move-object v5, v0

    move v12, v1

    :goto_499
    iget v0, v8, Lcom/google/android/gms/internal/drive/zzlu;->zzuo:I

    if-ge v12, v0, :cond_4cd

    .line 3194
    iget-object v0, v8, Lcom/google/android/gms/internal/drive/zzlu;->zzum:[I

    aget v1, v0, v12

    iget-object v6, v8, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    .line 3197
    iget-object v0, v8, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v2, v0, v1

    .line 3199
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v0

    and-int v0, v0, v17

    int-to-long v3, v0

    .line 3202
    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4b5

    goto :goto_4c8

    .line 3205
    :cond_4b5
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zzar(I)Lcom/google/android/gms/internal/drive/zzko;

    move-result-object v4

    if-nez v4, :cond_4bc

    goto :goto_4c8

    .line 3208
    :cond_4bc
    iget-object v3, v8, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/drive/zzll;->zzh(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p0

    .line 3210
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/drive/zzlu;->zza(IILjava/util/Map;Lcom/google/android/gms/internal/drive/zzko;Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzmx;)Ljava/lang/Object;

    move-result-object v5

    .line 3211
    :goto_4c8
    check-cast v5, Lcom/google/android/gms/internal/drive/zzmy;

    add-int/lit8 v12, v12, 0x1

    goto :goto_499

    :cond_4cd
    if-eqz v5, :cond_4d4

    .line 3214
    iget-object v0, v8, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    .line 3215
    invoke-virtual {v0, v11, v5}, Lcom/google/android/gms/internal/drive/zzmx;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d4
    if-nez v7, :cond_4e0

    move/from16 v0, p4

    if-ne v9, v0, :cond_4db

    goto :goto_4e6

    .line 3218
    :cond_4db
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdm()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v0

    throw v0

    :cond_4e0
    move/from16 v0, p4

    if-gt v9, v0, :cond_4e7

    if-ne v10, v7, :cond_4e7

    :goto_4e6
    return v9

    .line 3220
    :cond_4e7
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdm()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v0

    throw v0

    return-void

    nop

    :pswitch_data_4ee
    .packed-switch 0x0
        :pswitch_2a4
        :pswitch_28a
        :pswitch_264
        :pswitch_264
        :pswitch_249
        :pswitch_224
        :pswitch_201
        :pswitch_1d9
        :pswitch_1b4
        :pswitch_17e
        :pswitch_163
        :pswitch_249
        :pswitch_131
        :pswitch_201
        :pswitch_224
        :pswitch_116
        :pswitch_e9
        :pswitch_97
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/drive/zzns;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1208
    invoke-interface {p2}, Lcom/google/android/gms/internal/drive/zzns;->zzcd()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzsj:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_529

    .line 1210
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Lcom/google/android/gms/internal/drive/zzmx;Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    .line 1213
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v0, :cond_32

    .line 1214
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzjy;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object v0

    .line 1216
    iget-object v1, v0, Lcom/google/android/gms/internal/drive/zzkb;->zzos:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzmi;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 1218
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkb;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_34

    :cond_32
    move-object v0, v3

    move-object v1, v0

    .line 1220
    :goto_34
    iget-object v7, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_39
    if-ltz v7, :cond_511

    .line 1221
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v8

    .line 1223
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    :goto_43
    if-eqz v1, :cond_61

    .line 1225
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_61

    .line 1226
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Lcom/google/android/gms/internal/drive/zzns;Ljava/util/Map$Entry;)V

    .line 1227
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

    .line 1669
    :pswitch_6a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1672
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1673
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v10

    .line 1674
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/drive/zzns;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_50d

    .line 1665
    :pswitch_7f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1668
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IJ)V

    goto/16 :goto_50d

    .line 1661
    :pswitch_90
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1664
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zze(II)V

    goto/16 :goto_50d

    .line 1657
    :pswitch_a1
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1660
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzj(IJ)V

    goto/16 :goto_50d

    .line 1653
    :pswitch_b2
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1656
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzm(II)V

    goto/16 :goto_50d

    .line 1649
    :pswitch_c3
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1652
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzn(II)V

    goto/16 :goto_50d

    .line 1645
    :pswitch_d4
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1648
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzd(II)V

    goto/16 :goto_50d

    .line 1640
    :pswitch_e5
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1643
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/drive/zzjc;

    .line 1644
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILcom/google/android/gms/internal/drive/zzjc;)V

    goto/16 :goto_50d

    .line 1634
    :pswitch_f8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1637
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1638
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_50d

    .line 1630
    :pswitch_10d
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1633
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_50d

    .line 1626
    :pswitch_11e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1629
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzi(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IZ)V

    goto/16 :goto_50d

    .line 1622
    :pswitch_12f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1625
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzf(II)V

    goto/16 :goto_50d

    .line 1618
    :pswitch_140
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1621
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzc(IJ)V

    goto/16 :goto_50d

    .line 1614
    :pswitch_151
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1617
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzc(II)V

    goto/16 :goto_50d

    .line 1610
    :pswitch_162
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1613
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zza(IJ)V

    goto/16 :goto_50d

    .line 1606
    :pswitch_173
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1609
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzi(IJ)V

    goto/16 :goto_50d

    .line 1602
    :pswitch_184
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1605
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zzf(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zza(IF)V

    goto/16 :goto_50d

    .line 1598
    :pswitch_195
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1601
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zzlu;->zze(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zza(ID)V

    goto/16 :goto_50d

    :pswitch_1a6
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1596
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Lcom/google/android/gms/internal/drive/zzns;ILjava/lang/Object;I)V

    goto/16 :goto_50d

    .line 1587
    :pswitch_1b1
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1590
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1591
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v10

    .line 1592
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_50d

    .line 1579
    :pswitch_1c6
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1582
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1583
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zze(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1571
    :pswitch_1d7
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1574
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1575
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1563
    :pswitch_1e8
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1566
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1567
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1555
    :pswitch_1f9
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1558
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1559
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1547
    :pswitch_20a
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1550
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1551
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1539
    :pswitch_21b
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1542
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1543
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1531
    :pswitch_22c
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1534
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1535
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1523
    :pswitch_23d
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1526
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1527
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1515
    :pswitch_24e
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1518
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1519
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1507
    :pswitch_25f
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1510
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1511
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1499
    :pswitch_270
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1502
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1503
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1491
    :pswitch_281
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1494
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1495
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1483
    :pswitch_292
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1486
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1487
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1475
    :pswitch_2a3
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1478
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1479
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1467
    :pswitch_2b4
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1470
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1471
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zze(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1459
    :pswitch_2c5
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1462
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1463
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1451
    :pswitch_2d6
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1454
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1455
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1443
    :pswitch_2e7
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1446
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1447
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1435
    :pswitch_2f8
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1438
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1439
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1427
    :pswitch_309
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1430
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1431
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1419
    :pswitch_31a
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1422
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1423
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_50d

    .line 1410
    :pswitch_32b
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1413
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1414
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v10

    .line 1415
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_50d

    .line 1402
    :pswitch_340
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1405
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1406
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_50d

    .line 1394
    :pswitch_351
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1397
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1398
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1386
    :pswitch_362
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1389
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1390
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1378
    :pswitch_373
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1381
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1382
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1370
    :pswitch_384
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1373
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1374
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1362
    :pswitch_395
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1365
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1366
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1354
    :pswitch_3a6
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1357
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1358
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1346
    :pswitch_3b7
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1349
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1350
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1338
    :pswitch_3c8
    iget-object v9, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1341
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1342
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_50d

    .line 1330
    :pswitch_3d9
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1333
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1334
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v10

    .line 1335
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/drive/zzns;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_50d

    .line 1324
    :pswitch_3ee
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1328
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1329
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IJ)V

    goto/16 :goto_50d

    .line 1318
    :pswitch_3ff
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1322
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    .line 1323
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zze(II)V

    goto/16 :goto_50d

    .line 1312
    :pswitch_410
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1316
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1317
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzj(IJ)V

    goto/16 :goto_50d

    .line 1306
    :pswitch_421
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1310
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    .line 1311
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzm(II)V

    goto/16 :goto_50d

    .line 1300
    :pswitch_432
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1304
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    .line 1305
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzn(II)V

    goto/16 :goto_50d

    .line 1294
    :pswitch_443
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1298
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    .line 1299
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzd(II)V

    goto/16 :goto_50d

    .line 1289
    :pswitch_454
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1292
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/drive/zzjc;

    .line 1293
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILcom/google/android/gms/internal/drive/zzjc;)V

    goto/16 :goto_50d

    .line 1283
    :pswitch_467
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1286
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1287
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_50d

    .line 1279
    :pswitch_47c
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1282
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_50d

    .line 1273
    :pswitch_48d
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1277
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzl(Ljava/lang/Object;J)Z

    move-result v8

    .line 1278
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IZ)V

    goto/16 :goto_50d

    .line 1267
    :pswitch_49e
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1271
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    .line 1272
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzf(II)V

    goto :goto_50d

    .line 1261
    :pswitch_4ae
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1265
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1266
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzc(IJ)V

    goto :goto_50d

    .line 1255
    :pswitch_4be
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1259
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    .line 1260
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zzc(II)V

    goto :goto_50d

    .line 1249
    :pswitch_4ce
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1253
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1254
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zza(IJ)V

    goto :goto_50d

    .line 1243
    :pswitch_4de
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1247
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1248
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzi(IJ)V

    goto :goto_50d

    .line 1237
    :pswitch_4ee
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1241
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzm(Ljava/lang/Object;J)F

    move-result v8

    .line 1242
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/drive/zzns;->zza(IF)V

    goto :goto_50d

    .line 1231
    :pswitch_4fe
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1235
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/drive/zznd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 1236
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/drive/zzns;->zza(ID)V

    :cond_50d
    :goto_50d
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_39

    :cond_511
    :goto_511
    if-eqz v1, :cond_528

    .line 1677
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Lcom/google/android/gms/internal/drive/zzns;Ljava/util/Map$Entry;)V

    .line 1678
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

    .line 1680
    :cond_529
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    if-eqz v0, :cond_a46

    .line 1684
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v0, :cond_54a

    .line 1685
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzjy;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object v0

    .line 1687
    iget-object v1, v0, Lcom/google/android/gms/internal/drive/zzkb;->zzos:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzmi;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54a

    .line 1689
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkb;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1690
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_54c

    :cond_54a
    move-object v0, v3

    move-object v1, v0

    .line 1691
    :goto_54c
    iget-object v7, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v7, v7

    move-object v8, v1

    const/4 v1, 0x0

    :goto_551
    if-ge v1, v7, :cond_a29

    .line 1693
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v9

    .line 1695
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    :goto_55b
    if-eqz v8, :cond_579

    .line 1697
    iget-object v11, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_579

    .line 1698
    iget-object v11, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v11, p2, v8}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Lcom/google/android/gms/internal/drive/zzns;Ljava/util/Map$Entry;)V

    .line 1699
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

    .line 2141
    :pswitch_582
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2144
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2145
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v11

    .line 2146
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_a25

    .line 2137
    :pswitch_597
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2140
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IJ)V

    goto/16 :goto_a25

    .line 2133
    :pswitch_5a8
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2136
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zze(II)V

    goto/16 :goto_a25

    .line 2129
    :pswitch_5b9
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2132
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zzj(IJ)V

    goto/16 :goto_a25

    .line 2125
    :pswitch_5ca
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2128
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzm(II)V

    goto/16 :goto_a25

    .line 2121
    :pswitch_5db
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2124
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzn(II)V

    goto/16 :goto_a25

    .line 2117
    :pswitch_5ec
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2120
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzd(II)V

    goto/16 :goto_a25

    .line 2112
    :pswitch_5fd
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2115
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/drive/zzjc;

    .line 2116
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILcom/google/android/gms/internal/drive/zzjc;)V

    goto/16 :goto_a25

    .line 2106
    :pswitch_610
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2109
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2110
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_a25

    .line 2102
    :pswitch_625
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2105
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_a25

    .line 2098
    :pswitch_636
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2101
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzi(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IZ)V

    goto/16 :goto_a25

    .line 2094
    :pswitch_647
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2097
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzf(II)V

    goto/16 :goto_a25

    .line 2090
    :pswitch_658
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2093
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zzc(IJ)V

    goto/16 :goto_a25

    .line 2086
    :pswitch_669
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2089
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzc(II)V

    goto/16 :goto_a25

    .line 2082
    :pswitch_67a
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2085
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zza(IJ)V

    goto/16 :goto_a25

    .line 2078
    :pswitch_68b
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2081
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zzi(IJ)V

    goto/16 :goto_a25

    .line 2074
    :pswitch_69c
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2077
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzf(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zza(IF)V

    goto/16 :goto_a25

    .line 2070
    :pswitch_6ad
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2073
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zze(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zza(ID)V

    goto/16 :goto_a25

    :pswitch_6be
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2068
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Lcom/google/android/gms/internal/drive/zzns;ILjava/lang/Object;I)V

    goto/16 :goto_a25

    .line 2059
    :pswitch_6c9
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2062
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2063
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v11

    .line 2064
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_a25

    .line 2051
    :pswitch_6de
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2054
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2055
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zze(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 2043
    :pswitch_6ef
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2046
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2047
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 2035
    :pswitch_700
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2038
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2039
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 2027
    :pswitch_711
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2030
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2031
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 2019
    :pswitch_722
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2022
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2023
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 2011
    :pswitch_733
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2014
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2015
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 2003
    :pswitch_744
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2006
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2007
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1995
    :pswitch_755
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1998
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1999
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1987
    :pswitch_766
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1990
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1991
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1979
    :pswitch_777
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1982
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1983
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1971
    :pswitch_788
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1974
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1975
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1963
    :pswitch_799
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1966
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1967
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1955
    :pswitch_7aa
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1958
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1959
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1947
    :pswitch_7bb
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1950
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1951
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1939
    :pswitch_7cc
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1942
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1943
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zze(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1931
    :pswitch_7dd
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1934
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1935
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1923
    :pswitch_7ee
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1926
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1927
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1915
    :pswitch_7ff
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1918
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1919
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1907
    :pswitch_810
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1910
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1911
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1899
    :pswitch_821
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1902
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1903
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1891
    :pswitch_832
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1894
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1895
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_a25

    .line 1882
    :pswitch_843
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1885
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1886
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v11

    .line 1887
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_a25

    .line 1874
    :pswitch_858
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1877
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1878
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_a25

    .line 1866
    :pswitch_869
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1869
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1870
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1858
    :pswitch_87a
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1861
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1862
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1850
    :pswitch_88b
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1853
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1854
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1842
    :pswitch_89c
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1845
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1846
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1834
    :pswitch_8ad
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1837
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1838
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1826
    :pswitch_8be
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1829
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1830
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1818
    :pswitch_8cf
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1821
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1822
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1810
    :pswitch_8e0
    iget-object v10, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1813
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1814
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzns;Z)V

    goto/16 :goto_a25

    .line 1802
    :pswitch_8f1
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1805
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1806
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v11

    .line 1807
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/drive/zzns;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_a25

    .line 1796
    :pswitch_906
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1800
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1801
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IJ)V

    goto/16 :goto_a25

    .line 1790
    :pswitch_917
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1794
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    .line 1795
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zze(II)V

    goto/16 :goto_a25

    .line 1784
    :pswitch_928
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1788
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1789
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zzj(IJ)V

    goto/16 :goto_a25

    .line 1778
    :pswitch_939
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1782
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    .line 1783
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzm(II)V

    goto/16 :goto_a25

    .line 1772
    :pswitch_94a
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1776
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    .line 1777
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzn(II)V

    goto/16 :goto_a25

    .line 1766
    :pswitch_95b
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1770
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    .line 1771
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzd(II)V

    goto/16 :goto_a25

    .line 1761
    :pswitch_96c
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1764
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/drive/zzjc;

    .line 1765
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILcom/google/android/gms/internal/drive/zzjc;)V

    goto/16 :goto_a25

    .line 1755
    :pswitch_97f
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1758
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1759
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)V

    goto/16 :goto_a25

    .line 1751
    :pswitch_994
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1754
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    goto/16 :goto_a25

    .line 1745
    :pswitch_9a5
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1749
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzl(Ljava/lang/Object;J)Z

    move-result v9

    .line 1750
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzb(IZ)V

    goto/16 :goto_a25

    .line 1739
    :pswitch_9b6
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1743
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    .line 1744
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzf(II)V

    goto :goto_a25

    .line 1733
    :pswitch_9c6
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1737
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1738
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zzc(IJ)V

    goto :goto_a25

    .line 1727
    :pswitch_9d6
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1731
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    .line 1732
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zzc(II)V

    goto :goto_a25

    .line 1721
    :pswitch_9e6
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1725
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1726
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zza(IJ)V

    goto :goto_a25

    .line 1715
    :pswitch_9f6
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1719
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1720
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zzi(IJ)V

    goto :goto_a25

    .line 1709
    :pswitch_a06
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1713
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzm(Ljava/lang/Object;J)F

    move-result v9

    .line 1714
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/drive/zzns;->zza(IF)V

    goto :goto_a25

    .line 1703
    :pswitch_a16
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a25

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1707
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/drive/zznd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 1708
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/drive/zzns;->zza(ID)V

    :cond_a25
    :goto_a25
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_551

    :cond_a29
    :goto_a29
    if-eqz v8, :cond_a40

    .line 2149
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v1, p2, v8}, Lcom/google/android/gms/internal/drive/zzjy;->zza(Lcom/google/android/gms/internal/drive/zzns;Ljava/util/Map$Entry;)V

    .line 2150
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

    .line 2151
    :cond_a40
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Lcom/google/android/gms/internal/drive/zzmx;Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    return-void

    .line 2153
    :cond_a46
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

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

.method public final zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/drive/zziz;)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/drive/zziz;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 3222
    iget-boolean v0, v15, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    if-eqz v0, :cond_25d

    .line 3224
    sget-object v9, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_17
    if-ge v0, v13, :cond_254

    add-int/lit8 v3, v0, 0x1

    .line 3228
    aget-byte v0, v12, v0

    if-gez v0, :cond_29

    .line 3230
    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3231
    iget v3, v11, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    move v8, v0

    move/from16 v17, v3

    goto :goto_2c

    :cond_29
    move/from16 v17, v0

    move v8, v3

    :goto_2c
    ushr-int/lit8 v7, v17, 0x3

    and-int/lit8 v6, v17, 0x7

    if-le v7, v1, :cond_39

    .line 3235
    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v7, v2}, Lcom/google/android/gms/internal/drive/zzlu;->zzp(II)I

    move-result v0

    goto :goto_3d

    .line 3236
    :cond_39
    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/drive/zzlu;->zzau(I)I

    move-result v0

    :goto_3d
    move v4, v0

    if-ne v4, v10, :cond_4b

    move/from16 v24, v7

    move v2, v8

    move-object/from16 v18, v9

    const/16 v19, 0x0

    const/16 v26, -0x1

    goto/16 :goto_231

    .line 3240
    :cond_4b
    iget-object v0, v15, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    add-int/lit8 v1, v4, 0x1

    aget v5, v0, v1

    const/high16 v0, 0xff00000

    and-int/2addr v0, v5

    ushr-int/lit8 v3, v0, 0x14

    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v1, v0

    const/16 v0, 0x11

    const/4 v10, 0x2

    if-gt v3, v0, :cond_167

    const/4 v0, 0x1

    packed-switch v3, :pswitch_data_270

    goto/16 :goto_1a4

    :pswitch_66
    if-nez v6, :cond_1a4

    .line 3309
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v6

    move-wide/from16 v19, v1

    .line 3310
    iget-wide v0, v11, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    .line 3311
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/drive/zzjo;->zzk(J)J

    move-result-wide v21

    move-object v0, v9

    move-wide/from16 v2, v19

    move-object/from16 v1, p1

    move v10, v4

    move-wide/from16 v4, v21

    .line 3312
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_13d

    :pswitch_81
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_15f

    .line 3303
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3304
    iget v1, v11, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    .line 3305
    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zzjo;->zzw(I)I

    move-result v1

    .line 3306
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_15b

    :pswitch_94
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_15f

    .line 3299
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3300
    iget v1, v11, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_15b

    :pswitch_a3
    move-wide v2, v1

    if-ne v6, v10, :cond_1a4

    .line 3295
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zze([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3296
    iget-object v1, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_10b

    :pswitch_b0
    move-wide v2, v1

    if-ne v6, v10, :cond_1a4

    .line 3285
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    .line 3286
    invoke-static {v0, v12, v8, v13, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;[BIILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3287
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c7

    .line 3289
    iget-object v1, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_10b

    .line 3290
    :cond_c7
    iget-object v5, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    .line 3291
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/drive/zzkm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3292
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_10b

    :pswitch_d1
    move-wide v2, v1

    if-ne v6, v10, :cond_1a4

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_de

    .line 3279
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    goto :goto_e2

    .line 3280
    :cond_de
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3281
    :goto_e2
    iget-object v1, v11, Lcom/google/android/gms/internal/drive/zziz;->zznm:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_10b

    :pswitch_e8
    move-wide v2, v1

    if-nez v6, :cond_1a4

    .line 3274
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v1

    .line 3275
    iget-wide v5, v11, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    const-wide/16 v19, 0x0

    cmp-long v8, v5, v19

    if-eqz v8, :cond_f8

    goto :goto_f9

    :cond_f8
    const/4 v0, 0x0

    :goto_f9
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JZ)V

    move v0, v1

    goto :goto_10b

    :pswitch_fe
    move-wide v2, v1

    const/4 v0, 0x5

    if-ne v6, v0, :cond_1a4

    .line 3270
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/drive/zziy;->zza([BI)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v8, 0x4

    :goto_10b
    move v2, v4

    move v1, v7

    goto/16 :goto_251

    :pswitch_10f
    move-wide v2, v1

    if-ne v6, v0, :cond_1a4

    .line 3266
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BI)J

    move-result-wide v5

    move-object v0, v9

    move-object/from16 v1, p1

    move v10, v4

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_159

    :pswitch_11f
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_15f

    .line 3262
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zza([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    .line 3263
    iget v1, v11, Lcom/google/android/gms/internal/drive/zziz;->zznk:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_15b

    :pswitch_12d
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_15f

    .line 3258
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/drive/zziy;->zzb([BILcom/google/android/gms/internal/drive/zziz;)I

    move-result v6

    .line 3259
    iget-wide v4, v11, Lcom/google/android/gms/internal/drive/zziz;->zznl:J

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_13d
    move v0, v6

    goto :goto_15b

    :pswitch_13f
    move-wide v2, v1

    move v10, v4

    const/4 v0, 0x5

    if-ne v6, v0, :cond_15f

    .line 3254
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/drive/zziy;->zzd([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v8, 0x4

    goto :goto_15b

    :pswitch_14e
    move-wide v2, v1

    move v10, v4

    if-ne v6, v0, :cond_15f

    .line 3250
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/drive/zziy;->zzc([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JD)V

    :goto_159
    add-int/lit8 v0, v8, 0x8

    :goto_15b
    move v1, v7

    move v2, v10

    goto/16 :goto_251

    :cond_15f
    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    goto :goto_1ab

    :cond_167
    const/16 v0, 0x1b

    if-ne v3, v0, :cond_1af

    if-ne v6, v10, :cond_1a4

    .line 3317
    invoke-virtual {v9, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkp;

    .line 3318
    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzkp;->zzbo()Z

    move-result v3

    if-nez v3, :cond_18b

    .line 3319
    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzkp;->size()I

    move-result v3

    if-nez v3, :cond_182

    const/16 v3, 0xa

    goto :goto_184

    :cond_182
    shl-int/lit8 v3, v3, 0x1

    .line 3322
    :goto_184
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/drive/zzkp;->zzr(I)Lcom/google/android/gms/internal/drive/zzkp;

    move-result-object v0

    .line 3323
    invoke-virtual {v9, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_18b
    move-object v5, v0

    .line 3325
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v19, v4

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 3326
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/drive/zziy;->zza(Lcom/google/android/gms/internal/drive/zzmf;I[BIILcom/google/android/gms/internal/drive/zzkp;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    move v1, v7

    move/from16 v2, v19

    goto/16 :goto_251

    :cond_1a4
    :goto_1a4
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    :goto_1ab
    const/16 v26, -0x1

    goto/16 :goto_212

    :cond_1af
    move/from16 v19, v4

    const/16 v0, 0x31

    if-gt v3, v0, :cond_1e5

    int-to-long v4, v5

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v10, v3

    move v3, v8

    move-wide/from16 v22, v4

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 p3, v6

    move v6, v7

    move/from16 v24, v7

    move/from16 v7, p3

    move v15, v8

    move/from16 v8, v19

    move-object/from16 v18, v9

    move/from16 v25, v10

    const/16 v26, -0x1

    move-wide/from16 v9, v22

    move/from16 v11, v25

    move-wide/from16 v12, v20

    move-object/from16 v14, p5

    .line 3331
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    if-ne v0, v15, :cond_241

    goto :goto_230

    :cond_1e5
    move-wide/from16 v20, v1

    move/from16 v25, v3

    move/from16 p3, v6

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    const/16 v0, 0x32

    move/from16 v9, v25

    if-ne v9, v0, :cond_214

    move/from16 v7, p3

    if-ne v7, v10, :cond_212

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v20

    move-object/from16 v8, p5

    .line 3336
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    if-ne v0, v15, :cond_241

    goto :goto_230

    :cond_212
    :goto_212
    move v2, v15

    goto :goto_231

    :cond_214
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v17

    move/from16 v6, v24

    move-wide/from16 v10, v20

    move/from16 v12, v19

    move-object/from16 v13, p5

    .line 3341
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    if-ne v0, v15, :cond_241

    :goto_230
    move v2, v0

    .line 3344
    :goto_231
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/drive/zzlu;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 3345
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/drive/zziy;->zza(I[BIILcom/google/android/gms/internal/drive/zzmy;Lcom/google/android/gms/internal/drive/zziz;)I

    move-result v0

    :cond_241
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v9, v18

    move/from16 v2, v19

    move/from16 v1, v24

    :goto_251
    const/4 v10, -0x1

    goto/16 :goto_17

    :cond_254
    move v4, v13

    if-ne v0, v4, :cond_258

    return-void

    .line 3348
    :cond_258
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdm()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object v0

    throw v0

    :cond_25d
    move v4, v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 3350
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/drive/zziz;)I

    return-void

    nop

    :pswitch_data_270
    .packed-switch 0x0
        :pswitch_14e
        :pswitch_13f
        :pswitch_12d
        :pswitch_12d
        :pswitch_11f
        :pswitch_10f
        :pswitch_fe
        :pswitch_e8
        :pswitch_d1
        :pswitch_b0
        :pswitch_a3
        :pswitch_11f
        :pswitch_94
        :pswitch_fe
        :pswitch_10f
        :pswitch_81
        :pswitch_66
    .end packed-switch
.end method

.method public final zzc(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_194

    const/4 v0, 0x0

    .line 458
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v1, v1

    if-ge v0, v1, :cond_181

    .line 460
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 465
    iget-object v4, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_19c

    goto/16 :goto_17d

    .line 534
    :pswitch_1f
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 531
    :pswitch_24
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 532
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 533
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_17d

    .line 529
    :pswitch_36
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 526
    :pswitch_3b
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 527
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 528
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_17d

    .line 524
    :pswitch_4d
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/drive/zzmh;->zza(Lcom/google/android/gms/internal/drive/zzll;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_17d

    .line 522
    :pswitch_54
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuq:Lcom/google/android/gms/internal/drive/zzla;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/drive/zzla;->zza(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_17d

    .line 520
    :pswitch_5b
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 517
    :pswitch_60
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 518
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JJ)V

    .line 519
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 514
    :pswitch_72
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 515
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    .line 516
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 511
    :pswitch_84
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 512
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JJ)V

    .line 513
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 508
    :pswitch_96
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 509
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    .line 510
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 505
    :pswitch_a8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 506
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    .line 507
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 502
    :pswitch_ba
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 503
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    .line 504
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 499
    :pswitch_cc
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 500
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 501
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 497
    :pswitch_de
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 494
    :pswitch_e3
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 495
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 496
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 491
    :pswitch_f5
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 492
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzl(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JZ)V

    .line 493
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 488
    :pswitch_107
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 489
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    .line 490
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 485
    :pswitch_118
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 486
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JJ)V

    .line 487
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 482
    :pswitch_129
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 483
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JI)V

    .line 484
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 479
    :pswitch_13a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 480
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JJ)V

    .line 481
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 476
    :pswitch_14b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 477
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JJ)V

    .line 478
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 473
    :pswitch_15c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 474
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzm(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JF)V

    .line 475
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 470
    :pswitch_16d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 471
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JD)V

    .line 472
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzlu;->zzb(Ljava/lang/Object;I)V

    :cond_17d
    :goto_17d
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_3

    .line 536
    :cond_181
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    if-nez v0, :cond_193

    .line 537
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzmh;->zza(Lcom/google/android/gms/internal/drive/zzmx;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 538
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v0, :cond_193

    .line 539
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzmh;->zza(Lcom/google/android/gms/internal/drive/zzjy;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_193
    return-void

    .line 457
    :cond_194
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    return-void

    nop

    :pswitch_data_19c
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

.method public final zzd(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3352
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzun:I

    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuo:I

    if-ge v0, v1, :cond_25

    .line 3353
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzum:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3356
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 3358
    iget-object v4, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/drive/zzll;->zzk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3360
    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzum:[I

    array-length v0, v0

    :goto_28
    if-ge v1, v0, :cond_37

    .line 3362
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuq:Lcom/google/android/gms/internal/drive/zzla;

    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzum:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/drive/zzla;->zza(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 3364
    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->zzd(Ljava/lang/Object;)V

    .line 3365
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v0, :cond_45

    .line 3366
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzjy;->zzd(Ljava/lang/Object;)V

    :cond_45
    return-void
.end method

.method public final zzn(Ljava/lang/Object;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 575
    iget-boolean v2, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_4f2

    .line 576
    sget-object v2, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 578
    :goto_16
    iget-object v14, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v14, v14

    if-ge v12, v14, :cond_4ea

    .line 579
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    .line 584
    iget-object v3, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v3, v3, v12

    and-int/2addr v14, v7

    int-to-long v5, v14

    .line 589
    sget-object v14, Lcom/google/android/gms/internal/drive/zzke;->zzqh:Lcom/google/android/gms/internal/drive/zzke;

    .line 590
    invoke-virtual {v14}, Lcom/google/android/gms/internal/drive/zzke;->id()I

    move-result v14

    if-lt v15, v14, :cond_41

    sget-object v14, Lcom/google/android/gms/internal/drive/zzke;->zzqu:Lcom/google/android/gms/internal/drive/zzke;

    .line 591
    invoke-virtual {v14}, Lcom/google/android/gms/internal/drive/zzke;->id()I

    move-result v14

    if-gt v15, v14, :cond_41

    .line 592
    iget-object v14, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v7

    goto :goto_42

    :cond_41
    const/4 v14, 0x0

    :goto_42
    packed-switch v15, :pswitch_data_a9a

    goto/16 :goto_4e4

    .line 856
    :pswitch_47
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 858
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/drive/zzlq;

    .line 859
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v6

    .line 860
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v3

    goto/16 :goto_3c9

    .line 854
    :pswitch_5d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 855
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zzf(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 852
    :pswitch_6d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 853
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzi(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 850
    :pswitch_7d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 851
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 848
    :pswitch_89
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 849
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/drive/zzjr;->zzk(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 846
    :pswitch_95
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 847
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzl(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 844
    :pswitch_a5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 845
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 840
    :pswitch_b5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 842
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/drive/zzjc;

    .line 843
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v3

    goto/16 :goto_3c9

    .line 836
    :pswitch_c7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 837
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 838
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v3

    goto/16 :goto_3c9

    .line 830
    :pswitch_db
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 831
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 832
    instance-of v6, v5, Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v6, :cond_f1

    .line 833
    check-cast v5, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v3

    goto/16 :goto_3c9

    .line 834
    :cond_f1
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3c9

    .line 828
    :pswitch_f9
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 829
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(IZ)I

    move-result v3

    goto/16 :goto_3c9

    .line 826
    :pswitch_105
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 827
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/drive/zzjr;->zzj(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 824
    :pswitch_111
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 825
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/drive/zzjr;->zzg(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 822
    :pswitch_11d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 823
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzg(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 820
    :pswitch_12d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 821
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zze(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 818
    :pswitch_13d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 819
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zzd(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 816
    :pswitch_14d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 817
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(IF)I

    move-result v3

    goto/16 :goto_3c9

    .line 814
    :pswitch_159
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    const-wide/16 v5, 0x0

    .line 815
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(ID)I

    move-result v3

    goto/16 :goto_3c9

    .line 810
    :pswitch_167
    iget-object v14, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    .line 811
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzaq(I)Ljava/lang/Object;

    move-result-object v6

    .line 812
    invoke-interface {v14, v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzll;->zzb(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_3c9

    .line 807
    :pswitch_177
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v6

    .line 808
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v3

    goto/16 :goto_3c9

    .line 798
    :pswitch_185
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 799
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 801
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_199

    int-to-long v14, v14

    .line 802
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 804
    :cond_199
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 805
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_324

    .line 789
    :pswitch_1a3
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 790
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzg(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 792
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_1b7

    int-to-long v14, v14

    .line 793
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 795
    :cond_1b7
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 796
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_324

    .line 780
    :pswitch_1c1
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 781
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 783
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_1d5

    int-to-long v14, v14

    .line 784
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 786
    :cond_1d5
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 787
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_324

    .line 771
    :pswitch_1df
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 772
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 774
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_1f3

    int-to-long v14, v14

    .line 775
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 777
    :cond_1f3
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 778
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_324

    .line 762
    :pswitch_1fd
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 763
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 765
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_211

    int-to-long v14, v14

    .line 766
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 768
    :cond_211
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 769
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_324

    .line 753
    :pswitch_21b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 754
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzf(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 756
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_22f

    int-to-long v14, v14

    .line 757
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 759
    :cond_22f
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 760
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_324

    .line 744
    :pswitch_239
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 745
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzj(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 747
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_24d

    int-to-long v14, v14

    .line 748
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 750
    :cond_24d
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 751
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_324

    .line 735
    :pswitch_257
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 736
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 738
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_26b

    int-to-long v14, v14

    .line 739
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 741
    :cond_26b
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 742
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_324

    .line 726
    :pswitch_275
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 727
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 729
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_289

    int-to-long v14, v14

    .line 730
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 732
    :cond_289
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 733
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_324

    .line 717
    :pswitch_293
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 718
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zze(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 720
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_2a7

    int-to-long v14, v14

    .line 721
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 723
    :cond_2a7
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 724
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto/16 :goto_324

    .line 708
    :pswitch_2b1
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 709
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 711
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_2c5

    int-to-long v14, v14

    .line 712
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 714
    :cond_2c5
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 715
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto :goto_324

    .line 699
    :pswitch_2ce
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 700
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zza(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 702
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_2e2

    int-to-long v14, v14

    .line 703
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 705
    :cond_2e2
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 706
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto :goto_324

    .line 690
    :pswitch_2eb
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 691
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 693
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_2ff

    int-to-long v14, v14

    .line 694
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 696
    :cond_2ff
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 697
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    goto :goto_324

    .line 681
    :pswitch_308
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 682
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 684
    iget-boolean v6, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v6, :cond_31c

    int-to-long v14, v14

    .line 685
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 687
    :cond_31c
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v3

    .line 688
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v6

    :goto_324
    add-int/2addr v3, v6

    add-int/2addr v3, v5

    goto/16 :goto_3c9

    .line 678
    :pswitch_328
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzq(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 676
    :pswitch_332
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzu(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 674
    :pswitch_33c
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzw(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 672
    :pswitch_346
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 670
    :pswitch_350
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzr(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 668
    :pswitch_35a
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzt(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 666
    :pswitch_363
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;)I

    move-result v3

    goto :goto_3c9

    .line 663
    :pswitch_36c
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v6

    .line 664
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v3

    goto :goto_3c9

    .line 660
    :pswitch_379
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;)I

    move-result v3

    goto :goto_3c9

    .line 658
    :pswitch_382
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzx(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 656
    :pswitch_38b
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 654
    :pswitch_394
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzw(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 652
    :pswitch_39d
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzs(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 650
    :pswitch_3a6
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzp(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 648
    :pswitch_3af
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzo(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 646
    :pswitch_3b8
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 644
    :pswitch_3c1
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zzlu;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/drive/zzmh;->zzw(ILjava/util/List;Z)I

    move-result v3

    :goto_3c9
    add-int/2addr v13, v3

    goto/16 :goto_4e4

    .line 639
    :pswitch_3cc
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 641
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/drive/zzlq;

    .line 642
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v6

    .line 643
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v3

    goto :goto_3c9

    .line 636
    :pswitch_3e1
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 638
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zzf(IJ)I

    move-result v3

    goto :goto_3c9

    .line 634
    :pswitch_3f0
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 635
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzi(II)I

    move-result v3

    goto :goto_3c9

    .line 632
    :pswitch_3ff
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 633
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(IJ)I

    move-result v3

    goto :goto_3c9

    .line 630
    :pswitch_40a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 631
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/drive/zzjr;->zzk(II)I

    move-result v3

    goto :goto_3c9

    .line 628
    :pswitch_415
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 629
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzl(II)I

    move-result v3

    goto :goto_3c9

    .line 626
    :pswitch_424
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 627
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(II)I

    move-result v3

    goto :goto_3c9

    .line 622
    :pswitch_433
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 623
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/drive/zzjc;

    .line 624
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v3

    goto :goto_3c9

    .line 618
    :pswitch_444
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 619
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 620
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v3

    goto/16 :goto_3c9

    .line 612
    :pswitch_458
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 613
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 614
    instance-of v6, v5, Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v6, :cond_46e

    .line 615
    check-cast v5, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v3

    goto/16 :goto_3c9

    .line 616
    :cond_46e
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3c9

    .line 610
    :pswitch_476
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 611
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(IZ)I

    move-result v3

    goto/16 :goto_3c9

    .line 608
    :pswitch_482
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 609
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/drive/zzjr;->zzj(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 606
    :pswitch_48e
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 607
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/drive/zzjr;->zzg(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 604
    :pswitch_49a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 605
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzg(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 601
    :pswitch_4aa
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 603
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zze(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 599
    :pswitch_4ba
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 600
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/drive/zznd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zzd(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 597
    :pswitch_4ca
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 598
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(IF)I

    move-result v3

    goto/16 :goto_3c9

    .line 595
    :pswitch_4d6
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    const-wide/16 v5, 0x0

    .line 596
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(ID)I

    move-result v3

    goto/16 :goto_3c9

    :cond_4e4
    :goto_4e4
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_16

    .line 862
    :cond_4ea
    iget-object v2, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Lcom/google/android/gms/internal/drive/zzmx;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    .line 865
    :cond_4f2
    sget-object v2, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v12, 0x0

    .line 868
    :goto_4f9
    iget-object v13, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    array-length v13, v13

    if-ge v3, v13, :cond_a3f

    .line 869
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v13

    .line 871
    iget-object v14, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v15, v14, v3

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v4, v17, 0x14

    const/16 v11, 0x11

    if-gt v4, v11, :cond_525

    add-int/lit8 v11, v3, 0x2

    .line 879
    aget v11, v14, v11

    and-int v14, v11, v7

    ushr-int/lit8 v18, v11, 0x14

    shl-int v18, v8, v18

    if-eq v14, v6, :cond_522

    int-to-long v8, v14

    .line 884
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    goto :goto_523

    :cond_522
    move v14, v6

    :goto_523
    move v6, v14

    goto :goto_545

    .line 885
    :cond_525
    iget-boolean v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v8, :cond_542

    sget-object v8, Lcom/google/android/gms/internal/drive/zzke;->zzqh:Lcom/google/android/gms/internal/drive/zzke;

    .line 886
    invoke-virtual {v8}, Lcom/google/android/gms/internal/drive/zzke;->id()I

    move-result v8

    if-lt v4, v8, :cond_542

    sget-object v8, Lcom/google/android/gms/internal/drive/zzke;->zzqu:Lcom/google/android/gms/internal/drive/zzke;

    .line 887
    invoke-virtual {v8}, Lcom/google/android/gms/internal/drive/zzke;->id()I

    move-result v8

    if-gt v4, v8, :cond_542

    .line 888
    iget-object v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    add-int/lit8 v9, v3, 0x2

    aget v8, v8, v9

    and-int v11, v8, v7

    goto :goto_543

    :cond_542
    const/4 v11, 0x0

    :goto_543
    const/16 v18, 0x0

    :goto_545
    and-int v8, v13, v7

    int-to-long v8, v8

    packed-switch v4, :pswitch_data_b28

    goto/16 :goto_911

    .line 1184
    :pswitch_54d
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    .line 1186
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/drive/zzlq;

    .line 1187
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v8

    .line 1188
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v4

    goto/16 :goto_910

    .line 1182
    :pswitch_563
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    .line 1183
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zzf(IJ)I

    move-result v4

    goto/16 :goto_910

    .line 1180
    :pswitch_573
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    .line 1181
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzi(II)I

    move-result v4

    goto/16 :goto_910

    .line 1178
    :pswitch_583
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    const-wide/16 v8, 0x0

    .line 1179
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(IJ)I

    move-result v4

    goto/16 :goto_910

    .line 1176
    :pswitch_591
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    const/4 v4, 0x0

    .line 1177
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzk(II)I

    move-result v8

    goto/16 :goto_95a

    .line 1174
    :pswitch_59e
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    .line 1175
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzl(II)I

    move-result v4

    goto/16 :goto_910

    .line 1172
    :pswitch_5ae
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    .line 1173
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(II)I

    move-result v4

    goto/16 :goto_910

    .line 1168
    :pswitch_5be
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    .line 1170
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/drive/zzjc;

    .line 1171
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v4

    goto/16 :goto_910

    .line 1164
    :pswitch_5d0
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    .line 1165
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1166
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v4

    goto/16 :goto_910

    .line 1158
    :pswitch_5e4
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    .line 1159
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1160
    instance-of v8, v4, Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v8, :cond_5fa

    .line 1161
    check-cast v4, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v4

    goto/16 :goto_910

    .line 1162
    :cond_5fa
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_910

    .line 1156
    :pswitch_602
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    const/4 v4, 0x1

    .line 1157
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(IZ)I

    move-result v8

    goto/16 :goto_95a

    .line 1154
    :pswitch_60f
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    const/4 v4, 0x0

    .line 1155
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzj(II)I

    move-result v8

    goto/16 :goto_95a

    .line 1152
    :pswitch_61c
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    const-wide/16 v8, 0x0

    .line 1153
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zzg(IJ)I

    move-result v4

    goto/16 :goto_910

    .line 1150
    :pswitch_62a
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    .line 1151
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/drive/zzlu;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzg(II)I

    move-result v4

    goto/16 :goto_910

    .line 1148
    :pswitch_63a
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    .line 1149
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zze(IJ)I

    move-result v4

    goto/16 :goto_910

    .line 1146
    :pswitch_64a
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    .line 1147
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/drive/zzlu;->zzh(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zzd(IJ)I

    move-result v4

    goto/16 :goto_910

    .line 1144
    :pswitch_65a
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    const/4 v4, 0x0

    .line 1145
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(IF)I

    move-result v8

    goto/16 :goto_95a

    .line 1142
    :pswitch_667
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_911

    const-wide/16 v8, 0x0

    .line 1143
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(ID)I

    move-result v4

    goto/16 :goto_910

    .line 1138
    :pswitch_675
    iget-object v4, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    .line 1139
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zzaq(I)Ljava/lang/Object;

    move-result-object v9

    .line 1140
    invoke-interface {v4, v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzll;->zzb(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_910

    .line 1134
    :pswitch_685
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1135
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v8

    .line 1136
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v4

    goto/16 :goto_910

    .line 1125
    :pswitch_695
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1126
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_911

    .line 1128
    iget-boolean v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v8, :cond_6a9

    int-to-long v8, v11

    .line 1129
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1131
    :cond_6a9
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1132
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_834

    .line 1116
    :pswitch_6b3
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1117
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzg(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_911

    .line 1119
    iget-boolean v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v8, :cond_6c7

    int-to-long v8, v11

    .line 1120
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1122
    :cond_6c7
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1123
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_834

    .line 1107
    :pswitch_6d1
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1108
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_911

    .line 1110
    iget-boolean v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v8, :cond_6e5

    int-to-long v8, v11

    .line 1111
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1113
    :cond_6e5
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1114
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_834

    .line 1098
    :pswitch_6ef
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1099
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_911

    .line 1101
    iget-boolean v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v8, :cond_703

    int-to-long v8, v11

    .line 1102
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1104
    :cond_703
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1105
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_834

    .line 1089
    :pswitch_70d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1090
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_911

    .line 1092
    iget-boolean v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v8, :cond_721

    int-to-long v8, v11

    .line 1093
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1095
    :cond_721
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1096
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_834

    .line 1080
    :pswitch_72b
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1081
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_911

    .line 1083
    iget-boolean v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v8, :cond_73f

    int-to-long v8, v11

    .line 1084
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1086
    :cond_73f
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1087
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_834

    .line 1071
    :pswitch_749
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1072
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzj(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_911

    .line 1074
    iget-boolean v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v8, :cond_75d

    int-to-long v8, v11

    .line 1075
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1077
    :cond_75d
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1078
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_834

    .line 1062
    :pswitch_767
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1063
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_911

    .line 1065
    iget-boolean v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v8, :cond_77b

    int-to-long v8, v11

    .line 1066
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1068
    :cond_77b
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1069
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_834

    .line 1053
    :pswitch_785
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1054
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_911

    .line 1056
    iget-boolean v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v8, :cond_799

    int-to-long v8, v11

    .line 1057
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1059
    :cond_799
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1060
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_834

    .line 1044
    :pswitch_7a3
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1045
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zze(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_911

    .line 1047
    iget-boolean v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v8, :cond_7b7

    int-to-long v8, v11

    .line 1048
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1050
    :cond_7b7
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1051
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto/16 :goto_834

    .line 1035
    :pswitch_7c1
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1036
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzb(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_911

    .line 1038
    iget-boolean v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v8, :cond_7d5

    int-to-long v8, v11

    .line 1039
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1041
    :cond_7d5
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1042
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto :goto_834

    .line 1026
    :pswitch_7de
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1027
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zza(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_911

    .line 1029
    iget-boolean v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v8, :cond_7f2

    int-to-long v8, v11

    .line 1030
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1032
    :cond_7f2
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1033
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto :goto_834

    .line 1017
    :pswitch_7fb
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1018
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_911

    .line 1020
    iget-boolean v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v8, :cond_80f

    int-to-long v8, v11

    .line 1021
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1023
    :cond_80f
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1024
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    goto :goto_834

    .line 1008
    :pswitch_818
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1009
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_911

    .line 1011
    iget-boolean v8, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzul:Z

    if-eqz v8, :cond_82c

    int-to-long v8, v11

    .line 1012
    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1014
    :cond_82c
    invoke-static {v15}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v8

    .line 1015
    invoke-static {v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzad(I)I

    move-result v9

    :goto_834
    add-int/2addr v8, v9

    add-int/2addr v8, v4

    goto/16 :goto_95a

    .line 1004
    :pswitch_838
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x0

    .line 1005
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zzq(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_900

    :pswitch_845
    const/4 v10, 0x0

    .line 1000
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1001
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zzu(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_900

    :pswitch_852
    const/4 v10, 0x0

    .line 996
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 997
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zzw(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_900

    :pswitch_85f
    const/4 v10, 0x0

    .line 992
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 993
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zzv(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_900

    :pswitch_86c
    const/4 v10, 0x0

    .line 988
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 989
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zzr(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_900

    :pswitch_879
    const/4 v10, 0x0

    .line 984
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 985
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zzt(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_910

    .line 980
    :pswitch_886
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 981
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzd(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_910

    .line 976
    :pswitch_892
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v8

    .line 977
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v4

    goto/16 :goto_910

    .line 973
    :pswitch_8a2
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/util/List;)I

    move-result v4

    goto :goto_910

    .line 969
    :pswitch_8ad
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x0

    .line 970
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zzx(ILjava/util/List;Z)I

    move-result v4

    goto :goto_900

    :pswitch_8b9
    const/4 v10, 0x0

    .line 965
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 966
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zzv(ILjava/util/List;Z)I

    move-result v4

    goto :goto_900

    :pswitch_8c5
    const/4 v10, 0x0

    .line 961
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 962
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zzw(ILjava/util/List;Z)I

    move-result v4

    goto :goto_900

    :pswitch_8d1
    const/4 v10, 0x0

    .line 957
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 958
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zzs(ILjava/util/List;Z)I

    move-result v4

    goto :goto_900

    :pswitch_8dd
    const/4 v10, 0x0

    .line 953
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 954
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zzp(ILjava/util/List;Z)I

    move-result v4

    goto :goto_900

    :pswitch_8e9
    const/4 v10, 0x0

    .line 949
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 950
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zzo(ILjava/util/List;Z)I

    move-result v4

    goto :goto_900

    :pswitch_8f5
    const/4 v10, 0x0

    .line 945
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 946
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zzv(ILjava/util/List;Z)I

    move-result v4

    :goto_900
    add-int/2addr v5, v4

    const/4 v4, 0x1

    :goto_902
    const-wide/16 v7, 0x0

    goto :goto_915

    :pswitch_905
    const/4 v10, 0x0

    .line 941
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 942
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/drive/zzmh;->zzw(ILjava/util/List;Z)I

    move-result v4

    :goto_910
    add-int/2addr v5, v4

    :cond_911
    :goto_911
    const/4 v4, 0x1

    :goto_912
    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    :goto_915
    const-wide/16 v13, 0x0

    goto/16 :goto_a34

    :pswitch_919
    and-int v4, v12, v18

    if-eqz v4, :cond_911

    .line 937
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/drive/zzlq;

    .line 938
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v8

    .line 939
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v4

    goto :goto_910

    :pswitch_92c
    and-int v4, v12, v18

    if-eqz v4, :cond_911

    .line 934
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zzf(IJ)I

    move-result v4

    goto :goto_910

    :pswitch_939
    and-int v4, v12, v18

    if-eqz v4, :cond_911

    .line 932
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzi(II)I

    move-result v4

    goto :goto_910

    :pswitch_946
    and-int v4, v12, v18

    if-eqz v4, :cond_911

    const-wide/16 v8, 0x0

    .line 930
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(IJ)I

    move-result v4

    goto :goto_910

    :pswitch_951
    and-int v4, v12, v18

    if-eqz v4, :cond_911

    const/4 v4, 0x0

    .line 928
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzk(II)I

    move-result v8

    :goto_95a
    add-int/2addr v5, v8

    goto :goto_911

    :pswitch_95c
    and-int v4, v12, v18

    if-eqz v4, :cond_911

    .line 926
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzl(II)I

    move-result v4

    goto :goto_910

    :pswitch_969
    and-int v4, v12, v18

    if-eqz v4, :cond_911

    .line 924
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzh(II)I

    move-result v4

    goto :goto_910

    :pswitch_976
    and-int v4, v12, v18

    if-eqz v4, :cond_911

    .line 920
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/drive/zzjc;

    .line 921
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v4

    goto :goto_910

    :pswitch_985
    and-int v4, v12, v18

    if-eqz v4, :cond_911

    .line 916
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 917
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/drive/zzmh;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result v4

    goto/16 :goto_910

    :pswitch_997
    and-int v4, v12, v18

    if-eqz v4, :cond_911

    .line 910
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 911
    instance-of v8, v4, Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v8, :cond_9ab

    .line 912
    check-cast v4, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v4

    goto/16 :goto_910

    .line 913
    :cond_9ab
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_910

    :pswitch_9b3
    and-int v4, v12, v18

    if-eqz v4, :cond_911

    const/4 v4, 0x1

    .line 908
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(IZ)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_912

    :pswitch_9bf
    const/4 v4, 0x1

    and-int v8, v12, v18

    if-eqz v8, :cond_9cc

    const/4 v10, 0x0

    .line 906
    invoke-static {v15, v10}, Lcom/google/android/gms/internal/drive/zzjr;->zzj(II)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_902

    :cond_9cc
    const/4 v10, 0x0

    goto/16 :goto_902

    :pswitch_9cf
    const/4 v4, 0x1

    const/4 v10, 0x0

    and-int v8, v12, v18

    if-eqz v8, :cond_9dc

    const-wide/16 v13, 0x0

    .line 904
    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/drive/zzjr;->zzg(IJ)I

    move-result v8

    goto :goto_a11

    :cond_9dc
    const-wide/16 v13, 0x0

    goto :goto_a21

    :pswitch_9df
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_a21

    .line 902
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/drive/zzjr;->zzg(II)I

    move-result v8

    goto :goto_a11

    :pswitch_9f0
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_a21

    .line 900
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zze(IJ)I

    move-result v8

    goto :goto_a11

    :pswitch_a01
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_a21

    .line 898
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/drive/zzjr;->zzd(IJ)I

    move-result v8

    :goto_a11
    add-int/2addr v5, v8

    goto :goto_a21

    :pswitch_a13
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v8, v12, v18

    if-eqz v8, :cond_a21

    const/4 v8, 0x0

    .line 896
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(IF)I

    move-result v9

    add-int/2addr v5, v9

    :cond_a21
    :goto_a21
    const-wide/16 v7, 0x0

    goto :goto_a34

    :pswitch_a24
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_a21

    const-wide/16 v7, 0x0

    .line 894
    invoke-static {v15, v7, v8}, Lcom/google/android/gms/internal/drive/zzjr;->zzb(ID)I

    move-result v11

    add-int/2addr v5, v11

    :goto_a34
    add-int/lit8 v3, v3, 0x3

    move-wide v9, v13

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const/4 v11, 0x0

    goto/16 :goto_4f9

    :cond_a3f
    const/4 v10, 0x0

    .line 1190
    iget-object v2, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzur:Lcom/google/android/gms/internal/drive/zzmx;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Lcom/google/android/gms/internal/drive/zzmx;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v5, v2

    .line 1191
    iget-boolean v2, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v2, :cond_a99

    .line 1192
    iget-object v2, v0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/drive/zzjy;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object v1

    const/4 v2, 0x0

    .line 1194
    :goto_a52
    iget-object v3, v1, Lcom/google/android/gms/internal/drive/zzkb;->zzos:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/drive/zzmi;->zzer()I

    move-result v3

    if-ge v10, v3, :cond_a72

    .line 1195
    iget-object v3, v1, Lcom/google/android/gms/internal/drive/zzkb;->zzos:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/drive/zzmi;->zzaw(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 1196
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/drive/zzkd;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/drive/zzkb;->zzb(Lcom/google/android/gms/internal/drive/zzkd;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_a52

    .line 1198
    :cond_a72
    iget-object v1, v1, Lcom/google/android/gms/internal/drive/zzkb;->zzos:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzmi;->zzes()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1199
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/drive/zzkd;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/drive/zzkb;->zzb(Lcom/google/android/gms/internal/drive/zzkd;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_a7c

    :cond_a98
    add-int/2addr v5, v2

    :cond_a99
    return v5

    :pswitch_data_a9a
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

    :pswitch_data_b28
    .packed-switch 0x0
        :pswitch_a24
        :pswitch_a13
        :pswitch_a01
        :pswitch_9f0
        :pswitch_9df
        :pswitch_9cf
        :pswitch_9bf
        :pswitch_9b3
        :pswitch_997
        :pswitch_985
        :pswitch_976
        :pswitch_969
        :pswitch_95c
        :pswitch_951
        :pswitch_946
        :pswitch_939
        :pswitch_92c
        :pswitch_919
        :pswitch_905
        :pswitch_8f5
        :pswitch_8e9
        :pswitch_8dd
        :pswitch_8d1
        :pswitch_8c5
        :pswitch_8b9
        :pswitch_8ad
        :pswitch_8a2
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
        :pswitch_602
        :pswitch_5e4
        :pswitch_5d0
        :pswitch_5be
        :pswitch_5ae
        :pswitch_59e
        :pswitch_591
        :pswitch_583
        :pswitch_573
        :pswitch_563
        :pswitch_54d
    .end packed-switch
.end method

.method public final zzp(Ljava/lang/Object;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 3389
    :goto_5
    iget v4, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzun:I

    const/4 v5, 0x1

    if-ge v1, v4, :cond_10d

    .line 3390
    iget-object v4, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzum:[I

    aget v4, v4, v1

    .line 3392
    iget-object v6, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    aget v6, v6, v4

    .line 3394
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zzas(I)I

    move-result v7

    .line 3396
    iget-boolean v8, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzuk:Z

    const v9, 0xfffff

    if-nez v8, :cond_35

    .line 3397
    iget-object v8, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzud:[I

    add-int/lit8 v10, v4, 0x2

    aget v8, v8, v10

    and-int v10, v8, v9

    ushr-int/lit8 v8, v8, 0x14

    shl-int v8, v5, v8

    if-eq v10, v2, :cond_36

    .line 3402
    sget-object v2, Lcom/google/android/gms/internal/drive/zzlu;->zzuc:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v2, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move v3, v2

    move v2, v10

    goto :goto_36

    :cond_35
    const/4 v8, 0x0

    :cond_36
    :goto_36
    const/high16 v10, 0x10000000

    and-int/2addr v10, v7

    if-eqz v10, :cond_3d

    const/4 v10, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v10, 0x0

    :goto_3e
    if-eqz v10, :cond_47

    .line 3406
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;III)Z

    move-result v10

    if-nez v10, :cond_47

    return v0

    :cond_47
    const/high16 v10, 0xff00000

    and-int/2addr v10, v7

    ushr-int/lit8 v10, v10, 0x14

    const/16 v11, 0x9

    if-eq v10, v11, :cond_f8

    const/16 v11, 0x11

    if-eq v10, v11, :cond_f8

    const/16 v8, 0x1b

    if-eq v10, v8, :cond_cc

    const/16 v8, 0x3c

    if-eq v10, v8, :cond_bb

    const/16 v8, 0x44

    if-eq v10, v8, :cond_bb

    const/16 v6, 0x31

    if-eq v10, v6, :cond_cc

    const/16 v6, 0x32

    if-eq v10, v6, :cond_6a

    goto/16 :goto_109

    .line 3432
    :cond_6a
    iget-object v6, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    and-int/2addr v7, v9

    int-to-long v7, v7

    .line 3434
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/drive/zzll;->zzi(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 3435
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b8

    .line 3436
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zzaq(I)Ljava/lang/Object;

    move-result-object v4

    .line 3437
    iget-object v7, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzut:Lcom/google/android/gms/internal/drive/zzll;

    invoke-interface {v7, v4}, Lcom/google/android/gms/internal/drive/zzll;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzlj;

    move-result-object v4

    .line 3438
    iget-object v4, v4, Lcom/google/android/gms/internal/drive/zzlj;->zztw:Lcom/google/android/gms/internal/drive/zznm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/drive/zznm;->zzfj()Lcom/google/android/gms/internal/drive/zznr;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/drive/zznr;->zzxx:Lcom/google/android/gms/internal/drive/zznr;

    if-ne v4, v7, :cond_b8

    const/4 v4, 0x0

    .line 3440
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_99
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_b1

    .line 3442
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->zzej()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/drive/zzmd;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v4

    .line 3443
    :cond_b1
    invoke-interface {v4, v7}, Lcom/google/android/gms/internal/drive/zzmf;->zzp(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_99

    const/4 v5, 0x0

    :cond_b8
    if-nez v5, :cond_109

    return v0

    .line 3428
    :cond_bb
    invoke-direct {p0, p1, v6, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_109

    .line 3429
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/drive/zzmf;)Z

    move-result v4

    if-nez v4, :cond_109

    return v0

    :cond_cc
    and-int v6, v7, v9

    int-to-long v6, v6

    .line 3417
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/drive/zznd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3418
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f5

    .line 3419
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v4

    const/4 v7, 0x0

    .line 3420
    :goto_e0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_f5

    .line 3421
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 3422
    invoke-interface {v4, v8}, Lcom/google/android/gms/internal/drive/zzmf;->zzp(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f2

    const/4 v5, 0x0

    goto :goto_f5

    :cond_f2
    add-int/lit8 v7, v7, 0x1

    goto :goto_e0

    :cond_f5
    :goto_f5
    if-nez v5, :cond_109

    return v0

    .line 3411
    :cond_f8
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_109

    .line 3412
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zzap(I)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/gms/internal/drive/zzlu;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/drive/zzmf;)Z

    move-result v4

    if-nez v4, :cond_109

    return v0

    :cond_109
    :goto_109
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 3450
    :cond_10d
    iget-boolean v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzui:Z

    if-eqz v1, :cond_11e

    .line 3451
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlu;->zzus:Lcom/google/android/gms/internal/drive/zzjy;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/drive/zzjy;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzkb;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_11e

    return v0

    :cond_11e
    return v5
.end method
