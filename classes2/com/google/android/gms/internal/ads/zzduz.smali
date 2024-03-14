.class public final Lcom/google/android/gms/internal/ads/zzduz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzhof:I = 0x1

.field public static final enum zzhog:I = 0x2

.field private static final enum zzhoh:I = 0x3

.field private static final synthetic zzhoi:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzduz;->zzhoi:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method
