.class public final enum Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeke;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzeke;"
    }
.end annotation


# static fields
.field private static final zzes:Lcom/google/android/gms/internal/ads/zzekd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekd<",
            "Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzisv:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

.field private static final enum zzisw:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

.field private static final enum zzisx:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

.field private static final enum zzisy:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

.field private static final synthetic zzisz:[Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    const/4 v1, 0x0

    const-string v2, "AD_RESOURCE_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzisv:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    const/4 v2, 0x1

    const-string v3, "AD_RESOURCE_CREATIVE"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzisw:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    const/4 v3, 0x2

    const-string v4, "AD_RESOURCE_POST_CLICK"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzisx:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    const/4 v4, 0x3

    const-string v5, "AD_RESOURCE_AUTO_CLICK_DESTINATION"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzisy:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    const/4 v0, 0x4

    .line 27
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzisv:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzisw:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzisx:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzisy:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzisz:[Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeod;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeod;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzes:Lcom/google/android/gms/internal/ads/zzekd;

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
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzisz:[Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    return-object v0
.end method

.method public static zzhw(I)Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;
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
    sget-object p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzisy:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    return-object p0

    .line 6
    :cond_10
    sget-object p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzisx:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    return-object p0

    .line 5
    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzisw:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    return-object p0

    .line 4
    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->zzisv:Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;

    return-object p0
.end method

.method public static zzw()Lcom/google/android/gms/internal/ads/zzekg;
    .registers 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeoc;->zzeu:Lcom/google/android/gms/internal/ads/zzekg;

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
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->value:I

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->name()Ljava/lang/String;

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
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;->value:I

    return v0
.end method
