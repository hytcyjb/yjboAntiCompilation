.class public Lcom/didi/ddrive/preferences/KDPreferenceManager;
.super Ljava/lang/Object;
.source "KDPreferenceManager.java"


# static fields
.field private static final PREF_DRIVE:Ljava/lang/String; = "drive"

.field private static instance:Lcom/didi/ddrive/preferences/KDPreferenceManager;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mKdPreferenceDrive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/didi/ddrive/preferences/KDPreferenceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/ddrive/preferences/KDPreferenceManager;->instance:Lcom/didi/ddrive/preferences/KDPreferenceManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/didi/ddrive/preferences/KDPreferenceManager;

    invoke-direct {v0}, Lcom/didi/ddrive/preferences/KDPreferenceManager;-><init>()V

    sput-object v0, Lcom/didi/ddrive/preferences/KDPreferenceManager;->instance:Lcom/didi/ddrive/preferences/KDPreferenceManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/didi/ddrive/preferences/KDPreferenceManager;->instance:Lcom/didi/ddrive/preferences/KDPreferenceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/ddrive/preferences/KDPreferenceManager;->mKdPreferenceDrive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    if-nez v0, :cond_0

    new-instance v0, Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    iget-object v1, p0, Lcom/didi/ddrive/preferences/KDPreferenceManager;->mApplicationContext:Landroid/content/Context;

    const-string v2, "drive"

    invoke-direct {v0, v1, v2}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/didi/ddrive/preferences/KDPreferenceManager;->mKdPreferenceDrive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/preferences/KDPreferenceManager;->mKdPreferenceDrive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    goto :goto_0
.end method

.method public initOnApplicationCreate(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/didi/ddrive/preferences/KDPreferenceManager;->mApplicationContext:Landroid/content/Context;

    .line 37
    return-void
.end method
