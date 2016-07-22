.class synthetic Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$15;
.super Ljava/lang/Object;
.source "TaxiRealtimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$didi$frame$business$BreifDestination:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 449
    invoke-static {}, Lcom/didi/frame/business/BreifDestination;->values()[Lcom/didi/frame/business/BreifDestination;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$15;->$SwitchMap$com$didi$frame$business$BreifDestination:[I

    :try_start_0
    sget-object v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$15;->$SwitchMap$com$didi$frame$business$BreifDestination:[I

    sget-object v1, Lcom/didi/frame/business/BreifDestination;->None:Lcom/didi/frame/business/BreifDestination;

    invoke-virtual {v1}, Lcom/didi/frame/business/BreifDestination;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$15;->$SwitchMap$com$didi$frame$business$BreifDestination:[I

    sget-object v1, Lcom/didi/frame/business/BreifDestination;->Home:Lcom/didi/frame/business/BreifDestination;

    invoke-virtual {v1}, Lcom/didi/frame/business/BreifDestination;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$15;->$SwitchMap$com$didi$frame$business$BreifDestination:[I

    sget-object v1, Lcom/didi/frame/business/BreifDestination;->Company:Lcom/didi/frame/business/BreifDestination;

    invoke-virtual {v1}, Lcom/didi/frame/business/BreifDestination;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
