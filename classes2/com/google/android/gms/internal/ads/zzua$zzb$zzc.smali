.class public final enum Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeke;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzua$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzeke;"
    }
.end annotation


# static fields
.field private static final enum zzbzi:Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;

.field public static final enum zzbzj:Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;

.field private static final synthetic zzbzk:[Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;

.field private static final zzes:Lcom/google/android/gms/internal/ads/zzekd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekd<",
            "Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;

    const/4 v1, 0x0

    const-string v2, "UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;->zzbzi:Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;

    const/4 v2, 0x1

    const-string v3, "IN_MEMORY"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;->zzbzj:Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;

    const/4 v0, 0x2

    .line 23
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;->zzbzi:Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;->zzbzj:Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;->zzbzk:[Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzuf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzuf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;->zzes:Lcom/google/android/gms/internal/ads/zzekd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;->zzbzk:[Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;

    return-object v0
.end method

.method public static zzca(I)Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;
    .registers 2

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_7
    sget-object p0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;->zzbzj:Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;

    return-object p0

    .line 4
    :cond_a
    sget-object p0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;->zzbzi:Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;

    return-object p0
.end method

.method public static zzw()Lcom/google/android/gms/internal/ads/zzekg;
    .registers 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzug;->zzeu:Lcom/google/android/gms/internal/ads/zzekg;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;->value:I

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;->name()Ljava/lang/String;

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
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;->value:I

    return v0
.end method
