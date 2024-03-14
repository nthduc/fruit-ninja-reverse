.class public Lcom/chartboost/sdk/impl/s1;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/w1$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/s1$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/ViewGroup;

.field private c:Z

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private f:Lcom/chartboost/sdk/impl/s1$a;

.field private final g:Lcom/chartboost/sdk/impl/u1;

.field private final h:Landroid/os/Handler;

.field private i:Lcom/chartboost/sdk/impl/w1;

.field private j:Lcom/chartboost/sdk/impl/v1;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Lcom/chartboost/sdk/impl/u1;Landroid/os/Handler;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s1;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/s1;->b:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/s1;->c:Z

    .line 5
    iput-object p3, p0, Lcom/chartboost/sdk/impl/s1;->g:Lcom/chartboost/sdk/impl/u1;

    .line 6
    iput-object p4, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    .line 7
    new-instance p1, Lcom/chartboost/sdk/impl/v1;

    invoke-direct {p1, p0, p3}, Lcom/chartboost/sdk/impl/v1;-><init>(Lcom/chartboost/sdk/impl/s1;Lcom/chartboost/sdk/impl/u1;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    .line 8
    new-instance p1, Lcom/chartboost/sdk/impl/w1;

    invoke-direct {p1}, Lcom/chartboost/sdk/impl/w1;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/s1;->i:Lcom/chartboost/sdk/impl/w1;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->i:Lcom/chartboost/sdk/impl/w1;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1, p0}, Lcom/chartboost/sdk/impl/w1;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/w1$a;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/v1;->a(Lorg/json/JSONObject;)V

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_344

    goto/16 :goto_111

    :sswitch_f
    const-string p1, "getMaxSize"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/4 p1, 0x1

    goto/16 :goto_112

    :sswitch_1a
    const-string p1, "tracking"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/16 p1, 0x12

    goto/16 :goto_112

    :sswitch_26
    const-string p1, "warning"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/16 p1, 0x10

    goto/16 :goto_112

    :sswitch_32
    const-string p1, "totalVideoDuration"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/16 p1, 0xd

    goto/16 :goto_112

    :sswitch_3e
    const-string p1, "videoReplay"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/16 p1, 0xb

    goto/16 :goto_112

    :sswitch_4a
    const-string p1, "videoPaused"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/16 p1, 0xa

    goto/16 :goto_112

    :sswitch_56
    const-string p1, "getOrientationProperties"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/4 p1, 0x5

    goto/16 :goto_112

    :sswitch_61
    const-string p1, "rewardedVideoCompleted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/16 p1, 0x16

    goto/16 :goto_112

    :sswitch_6d
    const-string p1, "getParameters"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/4 p1, 0x0

    goto/16 :goto_112

    :sswitch_78
    const-string p1, "setOrientationProperties"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/16 p1, 0x14

    goto/16 :goto_112

    :sswitch_84
    const-string p1, "error"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/16 p1, 0xf

    goto/16 :goto_112

    :sswitch_90
    const-string p1, "debug"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/16 p1, 0x11

    goto/16 :goto_112

    :sswitch_9c
    const-string p1, "close"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/4 p1, 0x7

    goto/16 :goto_112

    :sswitch_a7
    const-string p1, "click"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/4 p1, 0x6

    goto :goto_112

    :sswitch_b1
    const-string p1, "show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/16 p1, 0xe

    goto :goto_112

    :sswitch_bc
    const-string p1, "videoPlaying"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/16 p1, 0x9

    goto :goto_112

    :sswitch_c7
    const-string p1, "getScreenSize"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/4 p1, 0x2

    goto :goto_112

    :sswitch_d1
    const-string p1, "reward"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/16 p1, 0x15

    goto :goto_112

    :sswitch_dc
    const-string p1, "videoCompleted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/16 p1, 0x8

    goto :goto_112

    :sswitch_e7
    const-string p1, "openUrl"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/16 p1, 0x13

    goto :goto_112

    :sswitch_f2
    const-string p1, "currentVideoDuration"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/16 p1, 0xc

    goto :goto_112

    :sswitch_fd
    const-string p1, "getCurrentPosition"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/4 p1, 0x3

    goto :goto_112

    :sswitch_107
    const-string p1, "getDefaultPosition"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    const/4 p1, 0x4

    goto :goto_112

    :cond_111
    :goto_111
    const/4 p1, -0x1

    :goto_112
    const-string v1, " callback triggered."

    const-string v2, "CBWebChromeClient"

    const-string v3, "JavaScript to native "

    packed-switch p1, :pswitch_data_3a2

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " callback not recognized."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Function name not recognized."

    return-object p1

    .line 120
    :pswitch_135
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v1;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_210

    .line 121
    :pswitch_140
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v1;->t:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_210

    .line 122
    :pswitch_14b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v1;->r:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_210

    .line 124
    :pswitch_16b
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v1;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_210

    .line 125
    :pswitch_176
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v1;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_210

    .line 126
    :pswitch_181
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v1;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_210

    .line 127
    :pswitch_18c
    const-class p1, Lcom/chartboost/sdk/impl/t1;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Javascript warning occurred"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v1;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_210

    .line 129
    :pswitch_1a2
    const-class p1, Lcom/chartboost/sdk/impl/t1;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Javascript Error occured"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v1;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_210

    .line 131
    :pswitch_1b7
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v1;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_210

    .line 132
    :pswitch_1c1
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v1;->k:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_210

    .line 133
    :pswitch_1cb
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v1;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_210

    .line 134
    :pswitch_1d5
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v1;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_210

    .line 135
    :pswitch_1df
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v1;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_210

    .line 136
    :pswitch_1e9
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v1;->o:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_210

    .line 137
    :pswitch_1f3
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v1;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_210

    .line 138
    :pswitch_1fd
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v1;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_210

    .line 139
    :pswitch_207
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->j:Lcom/chartboost/sdk/impl/v1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v1;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    :goto_210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Native function successfully called."

    return-object p1

    .line 218
    :pswitch_228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->g:Lcom/chartboost/sdk/impl/u1;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/u1;->t()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 220
    :pswitch_244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->g:Lcom/chartboost/sdk/impl/u1;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/u1;->r()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 222
    :pswitch_260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->g:Lcom/chartboost/sdk/impl/u1;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/u1;->q()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 224
    :pswitch_27c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->g:Lcom/chartboost/sdk/impl/u1;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/u1;->u()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 226
    :pswitch_298
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->g:Lcom/chartboost/sdk/impl/u1;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/u1;->s()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 228
    :pswitch_2b4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->g:Lcom/chartboost/sdk/impl/u1;

    iget-object p1, p1, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    if-eqz p1, :cond_340

    .line 230
    iget-object p1, p1, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    if-eqz p1, :cond_340

    .line 232
    new-array p2, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    invoke-static {p2}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object p2

    .line 233
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2fd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 234
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2e3

    .line 236
    :cond_2fd
    iget-object p1, p1, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_307
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 237
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/b;

    .line 238
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/chartboost/sdk/Model/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_307

    .line 240
    :cond_33b
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_340
    const-string p1, "{}"

    return-object p1

    nop

    :sswitch_data_344
    .sparse-switch
        -0x77f32bac -> :sswitch_107
        -0x68b9fc74 -> :sswitch_fd
        -0x5ca105ca -> :sswitch_f2
        -0x4b4af53b -> :sswitch_e7
        -0x40bd23f0 -> :sswitch_dc
        -0x37b0b0d1 -> :sswitch_d1
        -0x2aa0497d -> :sswitch_c7
        -0x26309ccd -> :sswitch_bc
        0x35dafd -> :sswitch_b1
        0x5a5c588 -> :sswitch_a7
        0x5a5ddf8 -> :sswitch_9c
        0x5b09653 -> :sswitch_90
        0x5c4d208 -> :sswitch_84
        0x7f3dfe1 -> :sswitch_78
        0x99879e0 -> :sswitch_6d
        0x20ccc3be -> :sswitch_61
        0x37e12d6d -> :sswitch_56
        0x38011189 -> :sswitch_4a
        0x3ba0c042 -> :sswitch_3e
        0x4089de4b -> :sswitch_32
        0x4305af9c -> :sswitch_26
        0x4bba1eb7 -> :sswitch_1a
        0x701ce34f -> :sswitch_f
    .end sparse-switch

    :pswitch_data_3a2
    .packed-switch 0x0
        :pswitch_2b4
        :pswitch_298
        :pswitch_27c
        :pswitch_260
        :pswitch_244
        :pswitch_228
        :pswitch_207
        :pswitch_1fd
        :pswitch_1f3
        :pswitch_1e9
        :pswitch_1df
        :pswitch_1d5
        :pswitch_1cb
        :pswitch_1c1
        :pswitch_1b7
        :pswitch_1a2
        :pswitch_18c
        :pswitch_181
        :pswitch_176
        :pswitch_16b
        :pswitch_14b
        :pswitch_140
        :pswitch_135
    .end packed-switch
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 3

    const-string v0, "error"

    .line 241
    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/s1;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-class v1, Lcom/chartboost/sdk/impl/s1;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chartboost Webview:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -- From line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/s1;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onHideCustomView()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/s1;->c:Z

    if-eqz v0, :cond_3e

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s1;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->e:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".chromium."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 11
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->e:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 15
    :cond_30
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/s1;->c:Z

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/chartboost/sdk/impl/s1;->d:Landroid/widget/FrameLayout;

    .line 17
    iput-object v0, p0, Lcom/chartboost/sdk/impl/s1;->e:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 20
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s1;->f:Lcom/chartboost/sdk/impl/s1$a;

    if-eqz v0, :cond_3e

    .line 22
    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/s1$a;->a(Z)V

    :cond_3e
    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 6

    const/4 p1, 0x1

    .line 1
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "eventType"

    .line 2
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "eventArgs"

    .line 3
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_12} :catch_1a

    .line 9
    invoke-virtual {p0, p2, p3}, Lcom/chartboost/sdk/impl/s1;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-virtual {p5, p2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    return p1

    :catch_1a
    const-string p2, "CBWebChromeClient"

    const-string p3, "Exception caught parsing the function name from js to native"

    .line 11
    invoke-static {p2, p3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4

    .line 20
    invoke-virtual {p0, p1, p3}, Lcom/chartboost/sdk/impl/s1;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 6

    .line 1
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2d

    .line 4
    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/s1;->c:Z

    .line 8
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s1;->d:Landroid/widget/FrameLayout;

    .line 9
    iput-object p2, p0, Lcom/chartboost/sdk/impl/s1;->e:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 12
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->a:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->b:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/chartboost/sdk/impl/s1;->d:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->b:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s1;->f:Lcom/chartboost/sdk/impl/s1$a;

    if-eqz p1, :cond_2d

    .line 19
    invoke-interface {p1, v0}, Lcom/chartboost/sdk/impl/s1$a;->a(Z)V

    :cond_2d
    return-void
.end method
