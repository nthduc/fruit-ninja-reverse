.class Lcom/chartboost/sdk/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:I

.field b:Z

.field c:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field d:Ljava/lang/String;

.field e:Lcom/chartboost/sdk/Networking/requests/models/MediationModel;

.field f:Ljava/lang/String;

.field g:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

.field h:Lcom/chartboost/sdk/ChartboostDelegate;

.field i:Landroid/content/Context;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/chartboost/sdk/g;->b:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/chartboost/sdk/g;->c:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 4
    iput-object v0, p0, Lcom/chartboost/sdk/g;->d:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/chartboost/sdk/g;->e:Lcom/chartboost/sdk/Networking/requests/models/MediationModel;

    .line 6
    iput-object v0, p0, Lcom/chartboost/sdk/g;->f:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/chartboost/sdk/g;->g:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .line 8
    iput-object v0, p0, Lcom/chartboost/sdk/g;->h:Lcom/chartboost/sdk/ChartboostDelegate;

    .line 9
    iput-object v0, p0, Lcom/chartboost/sdk/g;->i:Landroid/content/Context;

    .line 10
    iput-object v0, p0, Lcom/chartboost/sdk/g;->j:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/chartboost/sdk/g;->k:Ljava/lang/String;

    .line 14
    iput p1, p0, Lcom/chartboost/sdk/g;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1
    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/g;->a:I

    packed-switch v0, :pswitch_data_14e

    :pswitch_5
    goto/16 :goto_14c

    .line 36
    :pswitch_7
    iget-object v0, p0, Lcom/chartboost/sdk/g;->h:Lcom/chartboost/sdk/ChartboostDelegate;

    sput-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_12e

    const-string v0, "SdkSettings.assignDelegate"

    .line 37
    :try_start_d
    iget-object v1, p0, Lcom/chartboost/sdk/g;->h:Lcom/chartboost/sdk/ChartboostDelegate;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_14c

    .line 38
    :pswitch_14
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    .line 40
    :cond_1b
    iget-object v0, p0, Lcom/chartboost/sdk/g;->g:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    goto/16 :goto_14c

    .line 41
    :pswitch_21
    iget-object v0, p0, Lcom/chartboost/sdk/g;->f:Ljava/lang/String;

    sput-object v0, Lcom/chartboost/sdk/j;->b:Ljava/lang/String;

    goto/16 :goto_14c

    .line 42
    :pswitch_27
    iget-object v0, p0, Lcom/chartboost/sdk/g;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/c;->a(Ljava/lang/String;)V

    goto/16 :goto_14c

    .line 43
    :pswitch_2e
    iget-object v0, p0, Lcom/chartboost/sdk/g;->c:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-nez v0, :cond_3a

    const-string v0, "ChartboostCommand"

    const-string v1, "Pass a valid CBFramework enum value"

    .line 44
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 48
    :cond_3a
    iget-object v0, p0, Lcom/chartboost/sdk/g;->c:Lcom/chartboost/sdk/Chartboost$CBFramework;

    sput-object v0, Lcom/chartboost/sdk/j;->e:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 49
    iget-object v0, p0, Lcom/chartboost/sdk/g;->d:Ljava/lang/String;

    sput-object v0, Lcom/chartboost/sdk/j;->f:Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_42} :catch_12e

    const-string v0, "%s %s"

    const/4 v1, 0x2

    .line 50
    :try_start_45
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/chartboost/sdk/g;->c:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/chartboost/sdk/g;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/j;->g:Ljava/lang/String;

    goto/16 :goto_14c

    .line 51
    :pswitch_59
    iget-object v0, p0, Lcom/chartboost/sdk/g;->e:Lcom/chartboost/sdk/Networking/requests/models/MediationModel;

    sput-object v0, Lcom/chartboost/sdk/j;->i:Lcom/chartboost/sdk/Networking/requests/models/MediationModel;

    goto/16 :goto_14c

    .line 52
    :pswitch_5f
    iget-boolean v0, p0, Lcom/chartboost/sdk/g;->b:Z

    sput-boolean v0, Lcom/chartboost/sdk/j;->p:Z

    goto/16 :goto_14c

    .line 90
    :pswitch_65
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_115

    .line 91
    const-class v0, Lcom/chartboost/sdk/i;

    monitor-enter v0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_6f} :catch_12e

    .line 92
    :try_start_6f
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v2

    if-nez v2, :cond_110

    .line 93
    iget-object v2, p0, Lcom/chartboost/sdk/g;->i:Landroid/content/Context;

    if-nez v2, :cond_82

    const-string v1, "ChartboostCommand"

    const-string v2, "Context object is null. Please pass a valid activity object"

    .line 94
    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    monitor-exit v0

    return-void

    .line 97
    :cond_82
    iget-object v2, p0, Lcom/chartboost/sdk/g;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/chartboost/sdk/c;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_93

    const-string v1, "ChartboostCommand"

    const-string v2, "Permissions not set correctly"

    .line 98
    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    monitor-exit v0

    return-void

    .line 101
    :cond_93
    iget-object v2, p0, Lcom/chartboost/sdk/g;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/chartboost/sdk/c;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a2

    const-string v2, "ChartboostCommand"

    const-string v3, "Please add CBImpressionActivity in AndroidManifest.xml following README.md instructions."

    .line 102
    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_a2
    iget-object v2, p0, Lcom/chartboost/sdk/g;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_107

    iget-object v2, p0, Lcom/chartboost/sdk/g;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b3

    goto :goto_107

    .line 108
    :cond_b3
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v7

    .line 109
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v2

    .line 110
    iget-object v9, v7, Lcom/chartboost/sdk/impl/x;->a:Landroid/os/Handler;
    :try_end_bd
    .catchall {:try_start_6f .. :try_end_bd} :catchall_112

    const/4 v3, 0x0

    .line 118
    :try_start_be
    invoke-static {}, Lcom/chartboost/sdk/Networking/b;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_c9
    .catchall {:try_start_be .. :try_end_c9} :catchall_f8

    const/4 v3, 0x4

    .line 119
    :try_start_ca
    invoke-static {v3}, Lcom/chartboost/sdk/Networking/b;->a(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/util/concurrent/ExecutorService;
    :try_end_d5
    .catchall {:try_start_ca .. :try_end_d5} :catchall_f5

    .line 132
    :try_start_d5
    new-instance v2, Lcom/chartboost/sdk/i;

    iget-object v4, p0, Lcom/chartboost/sdk/g;->i:Landroid/content/Context;

    iget-object v5, p0, Lcom/chartboost/sdk/g;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/chartboost/sdk/g;->k:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/chartboost/sdk/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/x;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    .line 140
    invoke-static {v2}, Lcom/chartboost/sdk/i;->b(Lcom/chartboost/sdk/i;)V

    .line 142
    iget-object v3, v2, Lcom/chartboost/sdk/i;->g:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/n;->b()V

    .line 144
    new-instance v3, Lcom/chartboost/sdk/i$b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v2, v1}, Lcom/chartboost/sdk/i$b;-><init>(Lcom/chartboost/sdk/i;I)V

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/i;->b(Ljava/lang/Runnable;)V

    goto :goto_110

    :catchall_f5
    move-exception v1

    move-object v3, v8

    goto :goto_f9

    :catchall_f8
    move-exception v1

    :goto_f9
    if-eqz v3, :cond_fe

    .line 145
    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_fe
    const-string v2, "ChartboostCommand"

    const-string v3, "Unable to start threads"

    .line 150
    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    monitor-exit v0

    return-void

    :cond_107
    :goto_107
    const-string v1, "ChartboostCommand"

    const-string v2, "AppId or AppSignature is null. Please pass a valid id\'s"

    .line 152
    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    monitor-exit v0

    return-void

    .line 193
    :cond_110
    :goto_110
    monitor-exit v0

    goto :goto_14c

    :catchall_112
    move-exception v1

    monitor-exit v0
    :try_end_114
    .catchall {:try_start_d5 .. :try_end_114} :catchall_112

    :try_start_114
    throw v1

    .line 195
    :cond_115
    sget-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_11e

    .line 196
    sget-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    invoke-interface {v0}, Lcom/chartboost/sdk/a;->didInitialize()V

    .line 198
    :cond_11e
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    .line 199
    new-instance v2, Lcom/chartboost/sdk/i$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0, v1}, Lcom/chartboost/sdk/i$b;-><init>(Lcom/chartboost/sdk/i;I)V

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/i;->b(Ljava/lang/Runnable;)V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_12d} :catch_12e

    goto :goto_14c

    :catch_12e
    move-exception v0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/chartboost/sdk/g;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/chartboost/sdk/g;

    invoke-static {v2, v1, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_14c
    return-void

    nop

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_65
        :pswitch_5f
        :pswitch_5
        :pswitch_59
        :pswitch_2e
        :pswitch_27
        :pswitch_21
        :pswitch_14
        :pswitch_7
    .end packed-switch
.end method
