.class final Lcom/google/android/gms/internal/ads/zzdjs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdag<",
        "Lcom/google/android/gms/internal/ads/zzbnv;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhad:Lcom/google/android/gms/internal/ads/zzdjo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdjo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhad:Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 5

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnv;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhad:Lcom/google/android/gms/internal/ads/zzdjo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzx:Lcom/google/android/gms/internal/ads/zzbnv;

    if-eqz v0, :cond_f

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhad:Lcom/google/android/gms/internal/ads/zzdjo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzx:Lcom/google/android/gms/internal/ads/zzbnv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->destroy()V

    .line 7
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhad:Lcom/google/android/gms/internal/ads/zzdjo;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzx:Lcom/google/android/gms/internal/ads/zzbnv;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdjo;->zza(Lcom/google/android/gms/internal/ads/zzdjo;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhad:Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdjo;->zza(Lcom/google/android/gms/internal/ads/zzdjo;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnv;->zzahx()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzazd;->zzxx()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnv;->zzahp()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhad:Lcom/google/android/gms/internal/ads/zzdjo;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdjo;->zzb(Lcom/google/android/gms/internal/ads/zzdjo;)Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbbx;->zzeem:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcuk:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_74

    .line 14
    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhad:Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdjo;->zza(Lcom/google/android/gms/internal/ads/zzdjo;Lcom/google/android/gms/internal/ads/zzbnv;)Lcom/google/android/gms/ads/internal/overlay/zzo;

    move-result-object v0

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdjo;->zzd(Lcom/google/android/gms/internal/ads/zzbnv;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnv;->zzahy()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnv;->zzahq()Z

    move-result v2

    if-nez v2, :cond_67

    const/4 v2, 0x1

    goto :goto_68

    :cond_67
    const/4 v2, 0x0

    :goto_68
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzal(Z)V

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhad:Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdjo;->zza(Lcom/google/android/gms/internal/ads/zzdjo;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    :cond_74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhad:Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdjo;->zzb(Lcom/google/android/gms/internal/ads/zzdjo;Lcom/google/android/gms/internal/ads/zzbnv;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhad:Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdjo;->zza(Lcom/google/android/gms/internal/ads/zzdjo;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhad:Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdjo;->zzc(Lcom/google/android/gms/internal/ads/zzdjo;)Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzvn;->heightPixels:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhad:Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdjo;->zza(Lcom/google/android/gms/internal/ads/zzdjo;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhad:Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdjo;->zzc(Lcom/google/android/gms/internal/ads/zzdjo;)Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzvn;->widthPixels:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhad:Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdjo;->zzd(Lcom/google/android/gms/internal/ads/zzdjo;)Lcom/google/android/gms/internal/ads/zzdkc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbom;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhad:Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzbom;-><init>(Lcom/google/android/gms/internal/ads/zzbnv;Lcom/google/android/gms/internal/ads/zzxc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkc;->zzb(Lcom/google/android/gms/internal/ads/zzsg;)V

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaih()V

    return-void
.end method

.method public final zzaqv()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhad:Lcom/google/android/gms/internal/ads/zzdjo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzx:Lcom/google/android/gms/internal/ads/zzbnv;

    return-void
.end method
