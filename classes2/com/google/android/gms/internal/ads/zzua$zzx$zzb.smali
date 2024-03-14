.class public final enum Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeke;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzua$zzx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzeke;"
    }
.end annotation


# static fields
.field private static final enum zzcgc:Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

.field private static final enum zzcgd:Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

.field private static final enum zzcge:Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

.field private static final enum zzcgf:Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

.field private static final synthetic zzcgg:[Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

.field private static final zzes:Lcom/google/android/gms/internal/ads/zzekd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekd<",
            "Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    const/4 v1, 0x0

    const-string v2, "VIDEO_ERROR_CODE_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->zzcgc:Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    const/4 v2, 0x1

    const-string v3, "OPENGL_RENDERING_FAILED"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->zzcgd:Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    const/4 v3, 0x2

    const-string v4, "CACHE_LOAD_FAILED"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->zzcge:Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    const/4 v4, 0x3

    const-string v5, "ANDROID_TARGET_API_TOO_LOW"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->zzcgf:Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    const/4 v0, 0x4

    .line 27
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->zzcgc:Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->zzcgd:Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->zzcge:Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->zzcgf:Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->zzcgg:[Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzuv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzuv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->zzes:Lcom/google/android/gms/internal/ads/zzekd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->zzcgg:[Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    return-object v0
.end method

.method public static zzcw(I)Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_d
    sget-object p0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->zzcgf:Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    return-object p0

    .line 6
    :cond_10
    sget-object p0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->zzcge:Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    return-object p0

    .line 5
    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->zzcgd:Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    return-object p0

    .line 4
    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->zzcgc:Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;

    return-object p0
.end method

.method public static zzw()Lcom/google/android/gms/internal/ads/zzekg;
    .registers 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzuw;->zzeu:Lcom/google/android/gms/internal/ads/zzekg;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->value:I

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzv()I
    .registers 2

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzx$zzb;->value:I

    return v0
.end method
