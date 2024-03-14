.class public Lcom/google/android/gms/ads/internal/overlay/zze;
.super Lcom/google/android/gms/internal/ads/zzarb;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzw;


# static fields
.field private static final zzdon:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field protected final zzaas:Landroid/app/Activity;

.field private zzbov:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdop:Lcom/google/android/gms/ads/internal/overlay/zzk;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdoq:Lcom/google/android/gms/ads/internal/overlay/zzo;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdor:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdos:Landroid/widget/FrameLayout;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdot:Landroid/webkit/WebChromeClient$CustomViewCallback;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdou:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdov:Lcom/google/android/gms/ads/internal/overlay/zzh;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzdow:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field zzdox:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzdoy:Ljava/lang/Object;

.field private zzdoz:Ljava/lang/Runnable;

.field private zzdpa:Z

.field private zzdpb:Z

.field private zzdpc:Z

.field private zzdpd:Z

.field private zzdpe:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 361
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdon:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarb;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdor:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdou:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbov:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdow:Z

    .line 6
    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdox:I

    .line 7
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoy:Ljava/lang/Object;

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdpc:Z

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdpd:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdpe:Z

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    return-void
.end method

.method private final zza(Landroid/content/res/Configuration;)V
    .registers 7

    .line 331
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpt:Lcom/google/android/gms/ads/internal/zzi;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpt:Lcom/google/android/gms/ads/internal/zzi;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzbow:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 332
    :goto_15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {v3, v4, p1}, Lcom/google/android/gms/internal/ads/zzazd;->zza(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result p1

    .line 335
    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbov:Z

    const/16 v4, 0x13

    if-eqz v3, :cond_27

    if-eqz v0, :cond_3f

    :cond_27
    if-nez p1, :cond_3f

    .line 337
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz p1, :cond_40

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpt:Lcom/google/android/gms/ads/internal/zzi;

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpt:Lcom/google/android/gms/ads/internal/zzi;

    iget-boolean p1, p1, Lcom/google/android/gms/ads/internal/zzi;->zzbpb:Z

    if-eqz p1, :cond_40

    const/4 v2, 0x1

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    .line 339
    :cond_40
    :goto_40
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 340
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcow:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 341
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 342
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_6e

    .line 343
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x100

    if-eqz v1, :cond_6a

    const/16 v0, 0x1504

    if-eqz v2, :cond_6a

    const/16 v0, 0x1706

    .line 349
    :cond_6a
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_6e
    const/16 v0, 0x400

    const/16 v3, 0x800

    if-eqz v1, :cond_8a

    .line 352
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 353
    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_90

    if-eqz v2, :cond_90

    .line 356
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1002

    .line 357
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    .line 358
    :cond_8a
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 359
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_90
    return-void
.end method

.method private final zzaj(Z)V
    .registers 6

    .line 130
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzctv:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 131
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 133
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzr;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/zzr;-><init>()V

    const/16 v2, 0x32

    .line 134
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzr;->size:I

    const/4 v2, 0x0

    if-eqz p1, :cond_1e

    move v3, v0

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    .line 135
    :goto_1f
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzr;->paddingLeft:I

    if-eqz p1, :cond_25

    const/4 v3, 0x0

    goto :goto_26

    :cond_25
    move v3, v0

    .line 136
    :goto_26
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzr;->paddingRight:I

    .line 137
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzr;->paddingTop:I

    .line 138
    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzr;->paddingBottom:I

    .line 139
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzo;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzo;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzw;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoq:Lcom/google/android/gms/ads/internal/overlay/zzo;

    .line 140
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_45

    const/16 v1, 0xb

    goto :goto_47

    :cond_45
    const/16 v1, 0x9

    .line 143
    :goto_47
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 144
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpo:Z

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(ZZ)V

    .line 145
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdov:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoq:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final zzak(Z)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/overlay/zzi;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 195
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdpb:Z

    const/4 v2, 0x1

    if-nez v0, :cond_c

    .line 196
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 197
    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_20f

    .line 200
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    const/4 v4, 0x0

    if-eqz v3, :cond_24

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v3

    goto :goto_25

    :cond_24
    move-object v3, v4

    :goto_25
    const/4 v5, 0x0

    if-eqz v3, :cond_30

    .line 201
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbhv;->zzabc()Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x1

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    .line 202
    :goto_31
    iput-boolean v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdow:Z

    if-eqz v3, :cond_6d

    .line 204
    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    const/4 v7, 0x6

    if-ne v6, v7, :cond_51

    .line 205
    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    .line 206
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v2, :cond_4e

    const/4 v5, 0x1

    :cond_4e
    iput-boolean v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdow:Z

    goto :goto_6d

    .line 207
    :cond_51
    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    const/4 v7, 0x7

    if-ne v6, v7, :cond_6d

    .line 208
    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    .line 209
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6b

    const/4 v5, 0x1

    :cond_6b
    iput-boolean v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdow:Z

    .line 210
    :cond_6d
    :goto_6d
    iget-boolean v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdow:Z

    const/16 v6, 0x2e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Delay onShow to next orientation change: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 211
    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {v1, v5}, Lcom/google/android/gms/ads/internal/overlay/zze;->setRequestedOrientation(I)V

    .line 212
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    const/high16 v5, 0x1000000

    .line 213
    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    const-string v0, "Hardware acceleration on the AdActivity window enabled."

    .line 214
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 215
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbov:Z

    if-nez v0, :cond_a5

    .line 216
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdov:Lcom/google/android/gms/ads/internal/overlay/zzh;

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/internal/overlay/zzh;->setBackgroundColor(I)V

    goto :goto_ac

    .line 217
    :cond_a5
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdov:Lcom/google/android/gms/ads/internal/overlay/zzh;

    sget v5, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdon:I

    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/internal/overlay/zzh;->setBackgroundColor(I)V

    .line 218
    :goto_ac
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdov:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 220
    iput-boolean v2, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdpb:Z

    if-eqz p1, :cond_197

    .line 223
    :try_start_b7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/internal/ads/zzbgr;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    .line 224
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_cc

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v0

    move-object v7, v0

    goto :goto_cd

    :cond_cc
    move-object v7, v4

    .line 225
    :goto_cd
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_dd

    .line 226
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabv()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_de

    :cond_dd
    move-object v8, v4

    :goto_de
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 227
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 228
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_f8

    .line 229
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzv()Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_fa

    :cond_f8
    move-object/from16 v16, v4

    .line 231
    :goto_fa
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzts;->zzna()Lcom/google/android/gms/internal/ads/zzts;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v10, v3

    .line 232
    invoke-static/range {v6 .. v21}, Lcom/google/android/gms/internal/ads/zzbgr;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhy;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzacb;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_10d} :catch_189

    .line 237
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 238
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdep:Lcom/google/android/gms/internal/ads/zzagt;

    const/4 v8, 0x0

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdeq:Lcom/google/android/gms/internal/ads/zzagv;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 239
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_137

    .line 240
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbhv;->zzabb()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v0

    move-object v13, v0

    goto :goto_138

    :cond_137
    move-object v13, v4

    :goto_138
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 242
    invoke-interface/range {v5 .. v15}, Lcom/google/android/gms/internal/ads/zzbhv;->zza(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/internal/ads/zzagt;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/ads/internal/overlay/zzv;ZLcom/google/android/gms/internal/ads/zzahp;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqq;Lcom/google/android/gms/internal/ads/zzawl;)V

    .line 243
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 244
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-direct {v5, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    .line 245
    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzbhv;->zza(Lcom/google/android/gms/internal/ads/zzbhu;)V

    .line 246
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-eqz v0, :cond_15b

    .line 247
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzbgj;->loadUrl(Ljava/lang/String;)V

    goto :goto_173

    .line 248
    :cond_15b
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpp:Ljava/lang/String;

    if-eqz v0, :cond_181

    .line 249
    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpn:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpp:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzbgj;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_173
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_1a4

    .line 252
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzb(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    goto :goto_1a4

    .line 250
    :cond_181
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzi;

    const-string v2, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_189
    move-exception v0

    const-string v2, "Error obtaining webview."

    .line 235
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzi;

    const-string v2, "Could not obtain webview for the overlay."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_197
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 254
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzbgj;->zzbw(Landroid/content/Context;)V

    .line 255
    :cond_1a4
    :goto_1a4
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    .line 256
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_1bc

    .line 257
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzaca()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdov:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-static {v0, v5}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    .line 258
    :cond_1bc
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1d3

    .line 259
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1d3

    .line 260
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 261
    :cond_1d3
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbov:Z

    if-eqz v0, :cond_1dc

    .line 262
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzaci()V

    .line 263
    :cond_1dc
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpn:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpp:Ljava/lang/String;

    invoke-interface {v0, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdov:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 265
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    .line 266
    invoke-virtual {v0, v4, v5, v5}, Lcom/google/android/gms/ads/internal/overlay/zzh;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_200

    .line 267
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdow:Z

    if-nez v0, :cond_200

    .line 268
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzuy()V

    .line 269
    :cond_200
    invoke-direct {v1, v3}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaj(Z)V

    .line 270
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzaby()Z

    move-result v0

    if-eqz v0, :cond_20e

    .line 271
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(ZZ)V

    :cond_20e
    return-void

    .line 199
    :cond_20f
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzi;

    const-string v2, "Invalid activity, no window available."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V
    .registers 3
    .param p0    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    .line 314
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlg()Lcom/google/android/gms/internal/ads/zzaqv;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzaqv;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method private final zzuv()V
    .registers 6

    .line 273
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdpc:Z

    if-eqz v0, :cond_d

    goto :goto_50

    :cond_d
    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdpc:Z

    .line 276
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_4d

    .line 277
    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdox:I

    .line 278
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzdu(I)V

    .line 279
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoy:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_1c
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdpa:Z

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzace()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 281
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoz:Ljava/lang/Runnable;

    .line 282
    sget-object v1, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoz:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzabb;->zzcot:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 284
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v3

    .line 285
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 286
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdvo;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    monitor-exit v0

    return-void

    .line 288
    :cond_48
    monitor-exit v0

    goto :goto_4d

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_1c .. :try_end_4c} :catchall_4a

    throw v1

    .line 289
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzuw()V

    :cond_50
    :goto_50
    return-void
.end method

.method private final zzuy()V
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzuy()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    const/4 v0, 0x2

    .line 13
    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdox:I

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public final onBackPressed()V
    .registers 2

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdox:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    .line 45
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdou:Z

    const/4 v2, 0x3

    .line 46
    :try_start_17
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 47
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_e4

    .line 49
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbbx;->zzeem:I

    const v4, 0x7270e0

    if-le v3, v4, :cond_34

    .line 50
    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdox:I

    .line 51
    :cond_34
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 52
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    .line 53
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "shouldCallOnOverlayOpened"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdpe:Z

    .line 54
    :cond_4a
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpt:Lcom/google/android/gms/ads/internal/zzi;

    if-eqz v3, :cond_59

    .line 55
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpt:Lcom/google/android/gms/ads/internal/zzi;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzi;->zzbov:Z

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbov:Z

    goto :goto_5b

    .line 56
    :cond_59
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbov:Z

    .line 57
    :goto_5b
    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbov:Z

    if-eqz v3, :cond_71

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpt:Lcom/google/android/gms/ads/internal/zzi;

    iget v3, v3, Lcom/google/android/gms/ads/internal/zzi;->zzbpa:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_71

    .line 58
    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzj;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzj;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;Lcom/google/android/gms/ads/internal/overlay/zzf;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayl;->zzwz()Lcom/google/android/gms/internal/ads/zzdzc;

    :cond_71
    if-nez p1, :cond_97

    .line 60
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz p1, :cond_84

    .line 61
    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdpe:Z

    if-eqz p1, :cond_84

    .line 62
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzun()V

    .line 63
    :cond_84
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpr:I

    if-eq p1, v1, :cond_97

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    if-eqz p1, :cond_97

    .line 64
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzux;->onAdClicked()V

    .line 65
    :cond_97
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdps:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    invoke-direct {p1, v3, v4, v5}, Lcom/google/android/gms/ads/internal/overlay/zzh;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdov:Lcom/google/android/gms/ads/internal/overlay/zzh;

    .line 66
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdov:Lcom/google/android/gms/ads/internal/overlay/zzh;

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3}, Lcom/google/android/gms/ads/internal/overlay/zzh;->setId(I)V

    .line 67
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzazd;->zzg(Landroid/app/Activity;)V

    .line 68
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpr:I

    if-eq p1, v1, :cond_e0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_d1

    if-ne p1, v2, :cond_c9

    .line 74
    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzak(Z)V

    return-void

    .line 76
    :cond_c9
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzi;

    const-string v0, "Could not determine ad overlay type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_d1
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-direct {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdop:Lcom/google/android/gms/ads/internal/overlay/zzk;

    .line 72
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzak(Z)V

    return-void

    .line 69
    :cond_e0
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzak(Z)V

    return-void

    .line 48
    :cond_e4
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzi;

    const-string v0, "Could not get info for ad overlay."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_ec
    .catch Lcom/google/android/gms/ads/internal/overlay/zzi; {:try_start_17 .. :try_end_ec} :catch_ec

    :catch_ec
    move-exception p1

    .line 77
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 78
    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdox:I

    .line 79
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_d

    .line 125
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdov:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->removeView(Landroid/view/View;)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_d} :catch_d

    .line 128
    :catch_d
    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzuv()V

    return-void
.end method

.method public final onPause()V
    .registers 3

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzur()V

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_10

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onPause()V

    .line 103
    :cond_10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzctt:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 104
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdop:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-nez v0, :cond_3a

    .line 107
    :cond_32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazd;->zza(Lcom/google/android/gms/internal/ads/zzbgj;)Z

    .line 108
    :cond_3a
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzuv()V

    return-void
.end method

.method public final onRestart()V
    .registers 1

    return-void
.end method

.method public final onResume()V
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_d

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onResume()V

    .line 92
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(Landroid/content/res/Configuration;)V

    .line 93
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzctt:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 94
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_44

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_3f

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 97
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazd;->zzb(Lcom/google/android/gms/internal/ads/zzbgj;)Z

    return-void

    :cond_3f
    const-string v0, "The webview does not exist. Ignoring action."

    .line 98
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    :cond_44
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 114
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdou:Z

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .registers 3

    .line 82
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzctt:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 83
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_25

    .line 87
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazd;->zzb(Lcom/google/android/gms/internal/ads/zzbgj;)Z

    return-void

    :cond_25
    const-string v0, "The webview does not exist. Ignoring action."

    .line 88
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public final onStop()V
    .registers 3

    .line 116
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzctt:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 117
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdop:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-nez v0, :cond_2a

    .line 121
    :cond_22
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazd;->zza(Lcom/google/android/gms/internal/ads/zzbgj;)Z

    .line 122
    :cond_2a
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzuv()V

    return-void
.end method

.method public final setRequestedOrientation(I)V
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcvy:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 168
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 169
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_5d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    .line 170
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcvz:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 172
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 173
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_5d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcwa:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 175
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 176
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_5d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcwb:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 178
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 179
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_5d

    return-void

    .line 181
    :cond_5d
    :try_start_5d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_62} :catch_63

    return-void

    :catch_63
    move-exception p1

    .line 184
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    const-string v1, "AdOverlay.setRequestedOrientation"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzayb;->zzb(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5

    .line 186
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdos:Landroid/widget/FrameLayout;

    .line 187
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdos:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdos:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 189
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdos:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 191
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdpb:Z

    .line 192
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdot:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 193
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdor:Z

    return-void
.end method

.method public final zza(ZZ)V
    .registers 9

    .line 149
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcou:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 151
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_26

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpt:Lcom/google/android/gms/ads/internal/zzi;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpt:Lcom/google/android/gms/ads/internal/zzi;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzbpc:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 153
    :goto_27
    sget-object v3, Lcom/google/android/gms/internal/ads/zzabb;->zzcov:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 155
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v3

    .line 156
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_4b

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpt:Lcom/google/android/gms/ads/internal/zzi;

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpt:Lcom/google/android/gms/ads/internal/zzi;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzi;->zzbpd:Z

    if-eqz v3, :cond_4b

    const/4 v3, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v3, 0x0

    :goto_4c
    if-eqz p1, :cond_62

    if-eqz p2, :cond_62

    if-eqz v0, :cond_62

    if-nez v3, :cond_62

    .line 158
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaqn;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    const-string v5, "useCustomClose"

    invoke-direct {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaqn;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;Ljava/lang/String;)V

    const-string v4, "Custom close has been disabled for interstitial ads in this ad slot."

    .line 159
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzaqn;->zzdx(Ljava/lang/String;)V

    .line 160
    :cond_62
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoq:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz p1, :cond_71

    if-nez v3, :cond_6e

    if-eqz p2, :cond_6d

    if-nez v0, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v1, 0x0

    .line 161
    :cond_6e
    :goto_6e
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzal(Z)V

    :cond_71
    return-void
.end method

.method public final zzad(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    .line 111
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final zzdq()V
    .registers 2

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdpb:Z

    return-void
.end method

.method public final zzur()V
    .registers 4

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdor:Z

    if-eqz v1, :cond_d

    .line 17
    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->setRequestedOrientation(I)V

    .line 18
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdos:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdov:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdpb:Z

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdos:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 23
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdos:Landroid/widget/FrameLayout;

    .line 24
    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdot:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2c

    .line 25
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 26
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdot:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2c
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdor:Z

    return-void
.end method

.method public final zzus()V
    .registers 2

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdox:I

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final zzut()Z
    .registers 5

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdox:I

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-nez v0, :cond_9

    const/4 v0, 0x1

    return v0

    .line 37
    :cond_9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacd()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "onbackblocked"

    .line 41
    invoke-interface {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1a
    return v0
.end method

.method public final zzuu()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdov:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoq:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzh;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 164
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaj(Z)V

    return-void
.end method

.method final zzuw()V
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 291
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdpd:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdpd:Z

    .line 294
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_54

    .line 295
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdov:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->removeView(Landroid/view/View;)V

    .line 296
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdop:Lcom/google/android/gms/ads/internal/overlay/zzk;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 297
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzvr:Landroid/content/Context;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzbw(Landroid/content/Context;)V

    .line 298
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzbgj;->zzba(Z)V

    .line 299
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdop:Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzk;->parent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 300
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdop:Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzk;->index:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdop:Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzdpi:Landroid/view/ViewGroup$LayoutParams;

    .line 301
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdop:Lcom/google/android/gms/ads/internal/overlay/zzk;

    goto :goto_52

    .line 303
    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 304
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaas:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzbgj;->zzbw(Landroid/content/Context;)V

    .line 305
    :cond_52
    :goto_52
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 306
    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_63

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_63

    .line 307
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzum()V

    .line 308
    :cond_63
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_7e

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_7e

    .line 309
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 310
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzaca()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v1

    .line 311
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    :cond_7e
    return-void
.end method

.method public final zzux()V
    .registers 2

    .line 316
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdow:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 317
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdow:Z

    .line 318
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzuy()V

    :cond_a
    return-void
.end method

.method public final zzuz()V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdov:Lcom/google/android/gms/ads/internal/overlay/zzh;

    const/4 v1, 0x1

    .line 323
    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzdpg:Z

    return-void
.end method

.method public final zzva()V
    .registers 4

    .line 325
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoy:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 326
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdpa:Z

    .line 327
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoz:Ljava/lang/Runnable;

    if-eqz v1, :cond_18

    .line 328
    sget-object v1, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoz:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdvo;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    sget-object v1, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdoz:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    .line 330
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v1
.end method
