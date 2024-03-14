.class public Lcom/google/android/gms/internal/ads/zzbol;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzfpw:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbol;->zzfpw:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final zzaie()Landroid/view/ViewGroup;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbol;->zzfpw:Landroid/view/ViewGroup;

    return-object v0
.end method
