.class public Lcom/lewa/spm/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static INTEL_POWER_DEF:I

.field public static INTEL_POWER_VALUE_SIGN:Ljava/lang/String;

.field public static INTEL_TIME_DEF_FROM:Ljava/lang/String;

.field public static INTEL_TIME_DEF_TO:Ljava/lang/String;

.field public static INTEL_TIME_SIGN:Ljava/lang/String;

.field public static MODE_OUT:Ljava/lang/String;

.field public static SPM_LIFE_DIFF_TXT_SHOW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "23:00"

    sput-object v0, Lcom/lewa/spm/util/Constants;->INTEL_TIME_DEF_FROM:Ljava/lang/String;

    .line 55
    const-string v0, "07:00"

    sput-object v0, Lcom/lewa/spm/util/Constants;->INTEL_TIME_DEF_TO:Ljava/lang/String;

    .line 58
    const-string v0, "%"

    sput-object v0, Lcom/lewa/spm/util/Constants;->INTEL_POWER_VALUE_SIGN:Ljava/lang/String;

    .line 59
    const-string v0, ":"

    sput-object v0, Lcom/lewa/spm/util/Constants;->INTEL_TIME_SIGN:Ljava/lang/String;

    .line 60
    const-string v0, "hint"

    sput-object v0, Lcom/lewa/spm/util/Constants;->SPM_LIFE_DIFF_TXT_SHOW:Ljava/lang/String;

    .line 61
    const-string v0, "USER_OUT_MODE"

    sput-object v0, Lcom/lewa/spm/util/Constants;->MODE_OUT:Ljava/lang/String;

    .line 136
    const/16 v0, 0x14

    sput v0, Lcom/lewa/spm/util/Constants;->INTEL_POWER_DEF:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
