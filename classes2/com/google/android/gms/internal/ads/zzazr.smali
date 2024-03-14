.class final synthetic Lcom/google/android/gms/internal/ads/zzazr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final zzebn:Lcom/google/android/gms/internal/ads/zzazp;

.field private final zzebs:I

.field private final zzebt:I

.field private final zzebu:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazp;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazr;->zzebn:Lcom/google/android/gms/internal/ads/zzazp;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzazr;->zzebs:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzazr;->zzebt:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzazr;->zzebu:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazr;->zzebn:Lcom/google/android/gms/internal/ads/zzazp;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzazr;->zzebs:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzazr;->zzebt:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzazr;->zzebu:I

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzazp;->zza(IIILandroid/content/DialogInterface;I)V

    return-void
.end method
