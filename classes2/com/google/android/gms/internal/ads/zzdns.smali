.class final Lcom/google/android/gms/internal/ads/zzdns;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzhdc:I = 0x1

.field public static final enum zzhdd:I = 0x2

.field public static final enum zzhde:I = 0x3

.field private static final synthetic zzhdf:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdns;->zzhdf:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method
