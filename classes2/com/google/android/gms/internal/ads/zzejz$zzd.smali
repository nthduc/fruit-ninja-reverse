.class public abstract Lcom/google/android/gms/internal/ads/zzejz$zzd;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzejz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzejz$zzd<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# instance fields
.field protected zzijj:Lcom/google/android/gms/internal/ads/zzejs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzejs<",
            "Lcom/google/android/gms/internal/ads/zzejz$zzc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejs;->zzbfy()Lcom/google/android/gms/internal/ads/zzejs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzd;->zzijj:Lcom/google/android/gms/internal/ads/zzejs;

    return-void
.end method


# virtual methods
.method final zzbgu()Lcom/google/android/gms/internal/ads/zzejs;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzejs<",
            "Lcom/google/android/gms/internal/ads/zzejz$zzc;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzd;->zzijj:Lcom/google/android/gms/internal/ads/zzejs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejs;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzd;->zzijj:Lcom/google/android/gms/internal/ads/zzejs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzd;->zzijj:Lcom/google/android/gms/internal/ads/zzejs;

    .line 5
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzd;->zzijj:Lcom/google/android/gms/internal/ads/zzejs;

    return-object v0
.end method
